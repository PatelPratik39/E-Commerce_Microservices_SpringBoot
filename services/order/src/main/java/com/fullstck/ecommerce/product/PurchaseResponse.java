package com.fullstck.ecommerce.product;

public record PurchaseResponse(
        Integer productId,
        String name,
        String description
) {
}
