package com.fullstck.ecommerce.payments.payments;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import org.springframework.validation.annotation.Validated;

@Validated
public record Customer(
        Integer id,

        @NotNull(message = "Firstname is required")
        String firstname,

        @NotNull(message = "Lastname is required")
        String lastname,

        @NotNull(message = "Email is required")
        @Email(message = "The Customer is not correctly formatted")
        String email


) {
}
