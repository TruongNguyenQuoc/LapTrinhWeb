package entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Collection {

    private long id;

    private String name;

    public Collection(long id, String name) {
        this.id = id;
        this.name = name;
    }
}
