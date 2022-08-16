package entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDetail {

    private long id;

    private long orderId;

    private long proId;

    private int quantity;

    private int price;

    private int discount;

    public OrderDetail() {
    }

    public OrderDetail(long orderId, long proId, int quantity, int price, int discount) {
        this.orderId = orderId;
        this.proId = proId;
        this.quantity = quantity;
        this.price = price;
        this.discount = discount;
    }
}
