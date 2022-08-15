package entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Category {

    private long id;

    private String name;

    private String slug;

    private long collectionID;

    private boolean status;

    public Category(long id, String name, String slug, long collectionID, boolean status) {
        this.id = id;
        this.name = name;
        this.slug = slug;
        this.collectionID = collectionID;
        this.status = status;
    }
}
