package dao;

import entity.Category;
import entity.Product;
import utils.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Product> findAll() {
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(
                        new Product(
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

    public List<Product> findNewProduct() {
        List<Product> products = new ArrayList<Product>();
        String query = "SELECT * FROM product WHERE isNew = 1 LIMIT  5";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(
                        new Product(
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

    public Product findById(String id) {
        String query = "SELECT * FROM product WHERE id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(
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
                                rs.getBoolean(12));
            }
        } catch (Exception e) {
            return null;
        }
        return null;
    }

    public List<Product> findSameProductById(String pid, String cid) {
        List<Product> products = new ArrayList<Product>();
        String query = "SELECT * FROM product WHERE id != ? and categoryId = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            ps.setString(2,cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(
                        new Product(
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

    public List<Product> findByName(String name) {
        List<Product> products = new ArrayList<Product>();
        String query = "SELECT * FROM product WHERE product.name like ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(
                        new Product(
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

    public List<Product> findAllProductByPaging(int pageIndex, int pageSize) {
        List<Product> products = new ArrayList<Product>();
        String query = "SELECT * from product limit ? OFFSET ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pageSize);
            ps.setInt(2, pageIndex);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(
                        new Product(
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

    public int totalProduct(){
        String query = "SELECT count(*) FROM product WHERE status = 1 and remove = 0";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
