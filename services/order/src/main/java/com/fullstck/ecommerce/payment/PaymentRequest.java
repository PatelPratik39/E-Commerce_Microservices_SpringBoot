package com.fullstck.ecommerce.payment;

import com.fullstck.ecommerce.customer.CustomerResponse;
import com.fullstck.ecommerce.order.PaymentMethod;

import java.math.BigDecimal;

public record PaymentRequest(
        BigDecimal amount,
        PaymentMethod paymentsMethod,
        Integer orderId,
        String orderReference,
        CustomerResponse customer
) {
}
