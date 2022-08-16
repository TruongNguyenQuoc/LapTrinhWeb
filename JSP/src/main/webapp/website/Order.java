package entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class Order {

    private long id;

    private long accountId;

    private String createAt;

    private int totalMoney;

    public Order() {
    }

    public Order(long id, long accountId, String createAt, int totalMoney) {
        this.id = id;
        this.accountId = accountId;
        this.createAt = createAt;
        this.totalMoney = totalMoney;
    }
}
