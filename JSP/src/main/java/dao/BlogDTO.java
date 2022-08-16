package dao;

import entity.Blog;
import entity.Product;
import utils.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BlogDTO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Blog> findAllProductByPaging(int pageIndex, int pageSize) {
        List<Blog> blogs = new ArrayList<Blog>();
        String query = "SELECT * from blog limit ? OFFSET ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pageSize);
            ps.setInt(2, pageIndex);
            rs = ps.executeQuery();
            while (rs.next()) {
                blogs.add(
                        new Blog(
                                rs.getLong(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getString(5),
                                rs.getBoolean(6),
                                rs.getBoolean(7))
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blogs;
    }

    public List<Blog> findProductByNew() {
        List<Blog> blogs = new ArrayList<Blog>();
        String query = "SELECT * from blog WHERE isNew = 1 LIMIT 8";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                blogs.add(
                        new Blog(
                                rs.getLong(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getString(5),
                                rs.getBoolean(6),
                                rs.getBoolean(7))
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blogs;
    }

    public Blog findById(String id) {
        String query = "SELECT * FROM blog WHERE id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Blog(
                        rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getBoolean(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
