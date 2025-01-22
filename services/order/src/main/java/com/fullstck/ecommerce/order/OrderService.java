package com.fullstck.ecommerce.order;

import com.fullstck.ecommerce.customer.CustomerClient;
import com.fullstck.ecommerce.exception.BusinessException;
import com.fullstck.ecommerce.kafka.OrderConfirmation;
import com.fullstck.ecommerce.kafka.OrderProducer;
import com.fullstck.ecommerce.orderline.OrderLineRequest;
import com.fullstck.ecommerce.orderline.OrderLineService;
import com.fullstck.ecommerce.payment.PaymentClient;
import com.fullstck.ecommerce.payment.PaymentRequest;
import com.fullstck.ecommerce.product.ProductClient;
import com.fullstck.ecommerce.product.PurchaseRequest;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final CustomerClient customerClient;
    private final ProductClient productClient;
    private final OrderRepository repository;
    private final OrderMapper mapper;
    private final OrderLineService orderLineService;
    private final OrderProducer orderProducer;
    private final PaymentClient paymentClient;

    public Integer createOrder(OrderRequest request) {

//        first, check the customer  --> OpenFeign
        var customer = this.customerClient.findCustomerById(request.customerId())
                .orElseThrow(() -> new BusinessException("Can not create order :: No Customer exists with the provided ID : " + request.customerId()));

//        second, purchase the products --> product microservice (RESTTemplate)
        var purchasedProducts = this.productClient.purchaseProducts(request.products());


//        persist order
        var order = this.repository.save(mapper.toOrder(request));

//        persist order lines
        for(PurchaseRequest purchaseRequest : request.products()) {
            orderLineService.saveOrderLine(
                    new OrderLineRequest(
                            null,
                            order.getId(),
                            purchaseRequest.productId(),
                            purchaseRequest.quantity()
                            )
            );
        }

//         start payment process

        var paymentRequest = new PaymentRequest(
                request.amount(),
                request.paymentMethod(),
                order.getId(),
                order.getReference(),
                customer
        );

        paymentClient.requestOrderPayment(paymentRequest);

//        send the order confirmation --> notification microservice (Kafka)
        orderProducer.sendOrderConfirmation(
                new OrderConfirmation(
                        request.reference(),
                        request.amount(),
                        request.paymentMethod(),
                        customer,
                        purchasedProducts
                )
        );



//        orderProducer.sendOrderConfirmation(
//                new OrderConfirmation(
//                        request.reference(),
//                        request.amount(),
//                        request.paymentMethod(),
//                        customer,
//                        purchasedProducts
//                )
//        );
        return order.getId();
    }

    public List<OrderResponse> findAll() {
        return repository.findAll().stream().map(mapper::fromOrder).collect(Collectors.toList());
    }

    public OrderResponse findById(Integer orderId) {
        return repository.findById(orderId)
                .map(mapper:: fromOrder)
                .orElseThrow(() -> new EntityNotFoundException(String.format("No Order found with provided ID: %d", orderId)));
    }
}
