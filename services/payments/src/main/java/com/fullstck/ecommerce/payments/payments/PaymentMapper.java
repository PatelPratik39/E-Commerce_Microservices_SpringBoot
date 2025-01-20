package com.fullstck.ecommerce.payments.payments;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PaymentMapper {

    public Payment toPayment(PaymentRequest request) {
        return Payment.builder()
                .id(request.id())
                .orderId(request.orderId())
                .paymentsMethod(request.paymentsMethod())
                .amount(request.amount())
                .build();
    }
}
