package com.fullstck.ecommerce.order.product;

public record PurchaseResponse(
        Integer productId,
        String name,
        String description
) {
}
