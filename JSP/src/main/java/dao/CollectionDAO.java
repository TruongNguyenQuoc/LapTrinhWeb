package dao;

import entity.Collection;
import utils.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CollectionDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Collection> findAll() {
        List<Collection> collections = new ArrayList<Collection>();
        String query = "select * from collection";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                collections.add(new Collection(rs.getLong(1), rs.getString(2)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return collections;
    }

    public String findCollectionByCategory(String id) {
        System.out.println(id);
        String query = "select * from category where id = ?";
        String collectionId = "";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(id));
            rs = ps.executeQuery();
            while (rs.next()) {
                collectionId = rs.getString(3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return collectionId;
    }
}
