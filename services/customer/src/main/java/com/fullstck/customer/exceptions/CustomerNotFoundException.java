package com.fullstck.customer.exceptions;

import lombok.Getter;

@Getter
public class CustomerNotFoundException extends RuntimeException {
    // Getter for the message
    private String msg;

    // Constructor with a custom message
    public CustomerNotFoundException(String msg) {
        super(msg); // Pass the message to the parent RuntimeException
        this.msg = msg;
    }

}