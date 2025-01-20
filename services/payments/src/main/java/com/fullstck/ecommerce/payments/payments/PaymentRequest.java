package com.fullstck.ecommerce.payments.payments;

import java.math.BigDecimal;

public record PaymentRequest(
        Integer id,
        BigDecimal amount,
        PaymentsMethod paymentsMethod,
        Integer orderId,
        String orderReference,
        Customer customer
) {
}
