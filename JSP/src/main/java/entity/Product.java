package entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Product {

    private long id;

    private String name;

    private String shortDesc;

    private String description;

    private String image;

    private int price;

    private int discount;

    private long categoryId;

    private int amount;

    private boolean remove;

    private boolean status;

    private boolean isNew;

    public Product(long id, String name, String shortDesc, String description, String image,
                   int price, int discount, long categoryId, int amount, boolean remove, boolean status, boolean isNew) {
        this.id = id;
        this.name = name;
        this.shortDesc = shortDesc;
        this.description = description;
        this.image = image;
        this.price = price;
        this.discount = discount;
        this.categoryId = categoryId;
        this.amount = amount;
        this.remove = remove;
        this.status = status;
        this.isNew = isNew;
    }
}
