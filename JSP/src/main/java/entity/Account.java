package entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Account {

    private long id;

    private String username;

    private String password;

    private String fullName;

    private String email;

    private String address;

    private long roleId;

    private boolean status;

    public Account(long id, String username, String password, String fullName, String email, String address,
                   long roleId,
                   boolean status) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.address = address;
        this.email = email;
        this.roleId = roleId;
        this.status = status;
    }

    public Account() {
    }
}
