package com.fullstck.ecommerce.payments.notification;

import com.fullstck.ecommerce.payments.payments.PaymentsMethod;

import java.math.BigDecimal;

public record PaymentNotificationRequest(
        String orderReference,
        BigDecimal amount,
        PaymentsMethod paymentMethod,
        String customerFirstName,
        String customerLastName,
        String customerEmail
) {
}
