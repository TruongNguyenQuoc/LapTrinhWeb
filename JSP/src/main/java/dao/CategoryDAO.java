package dao;

import entity.Category;
import entity.Product;
import utils.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Category> findAll() {
        List<Category> categories = new ArrayList<Category>();
        String query = "select * from category";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                categories.add(
                        new Category(
                                rs.getLong(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getLong(4),
                                rs.getBoolean(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    public String findCategoryNameById(String id) {
        String query = "select * from category where id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    public List<Category> findCategorySames(String id) {
        List<Category> categories = new ArrayList<Category>();
        String query = "select * from category where collectionID = ? limit 6";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                categories.add( new Category(
                        rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getLong(4),
                        rs.getBoolean(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    public List<Product> getProductByCategory(String cid){
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where categoryId = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add( new Product(
                        rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getLong(8),
                        rs.getInt(9),
                        rs.getBoolean(10),
                        rs.getBoolean(11),
                        rs.getBoolean(12))
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
}
