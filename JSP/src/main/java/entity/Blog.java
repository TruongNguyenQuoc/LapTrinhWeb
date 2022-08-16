package entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Blog {

    private long id;

    private String title;

    private String shortDesc;

    private String description;

    private String image;

    private boolean isNew;

    private boolean status;

    public Blog() {
    }

    public Blog(long id, String title, String shortDesc, String description, String image, boolean isNew,
                boolean status) {
        this.id = id;
        this.title = title;
        this.shortDesc = shortDesc;
        this.description = description;
        this.image = image;
        this.isNew = isNew;
        this.status = status;
    }
}
