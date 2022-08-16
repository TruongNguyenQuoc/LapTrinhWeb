package entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Cart {

    private Product product;

    private int quantity;

    public Cart() {
    }

    public Cart(int quantity, Product product) {
        this.product = product;
        this.quantity = quantity;
    }

    public void incrementQuantity(){
        quantity++;
    }
}
