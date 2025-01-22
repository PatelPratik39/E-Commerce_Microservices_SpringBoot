package com.fullstck.ecommerce.payments;

import java.math.BigDecimal;

public record PaymentRequest(
        Integer id,
        BigDecimal amount,
        PaymentMethod paymentsMethod,
        Integer orderId,
        String orderReference,
        Customer customer
) {
}
