package dao;

import entity.Cart;
import utils.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class CartItemDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Cart> getByCustomer(long cusId){
        String query = "SELECT * FROM CartItem c WHERE c.account.id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setLong(1,cusId);
            rs = ps.executeQuery();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return null;
    }

}
