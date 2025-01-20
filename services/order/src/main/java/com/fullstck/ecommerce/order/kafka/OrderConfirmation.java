package com.fullstck.ecommerce.order.kafka;

import com.fullstck.ecommerce.order.customer.CustomerResponse;
import com.fullstck.ecommerce.order.order.PaymentMethod;
import com.fullstck.ecommerce.order.product.PurchaseResponse;

import java.math.BigDecimal;
import java.util.List;

public record OrderConfirmation (
        String orderReference,
        BigDecimal totalAmount,
        PaymentMethod paymentMethod,
        CustomerResponse customer,
        List<PurchaseResponse> products
) {
}
