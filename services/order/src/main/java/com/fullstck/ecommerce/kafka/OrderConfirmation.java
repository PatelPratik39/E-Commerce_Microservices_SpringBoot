package com.fullstck.ecommerce.kafka;

import com.fullstck.ecommerce.customer.CustomerResponse;
import com.fullstck.ecommerce.order.PaymentMethod;
import com.fullstck.ecommerce.product.PurchaseResponse;

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

