package dao;

import entity.Account;
import entity.Product;
import utils.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public Account login(String username, String password){
        String query = "select * from account where username like ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+username+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Account account = new Account(
                                rs.getLong(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getString(5),
                                rs.getString(6),
                                rs.getLong(7),
                                rs.getBoolean(8));

                if(password.equalsIgnoreCase(account.getPassword())){
                    return account;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Account register(String username, String password, String fullname, String email, String address){
        String query = "insert into account (username, password, fullName, address, email, roleId, status)\n" +
                " values(?,?,?,?,?,true, true)";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,fullname);
            ps.setString(4,email);
            ps.setString(5,address);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Account isExist(String username){
        String query = "select * from account where username like ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+username+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Account account = new Account(
                        rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getBoolean(8));

                return account;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Account> findAllAccountByPaging(int pageIndex, int pageSize) {
        List<Account> accounts = new ArrayList<Account>();
        String query = "SELECT * from account limit ? OFFSET ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pageSize);
            ps.setInt(2, pageIndex);
            rs = ps.executeQuery();
            while (rs.next()) {
                accounts.add(
                        new Account(
                                rs.getLong(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getString(5),
                                rs.getString(6),
                                rs.getLong(7),
                                rs.getBoolean(8))
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return accounts;
    }

    public Account getUserById(String id) {
        Account account = new Account();
        String query = "select * from user where id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                account = new Account(
                        rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getBoolean(8));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return account;
    }

    public void deleteUserById(String id) {
        String query = "delete from account where id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(id));
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateUserById(String id, String avatar, String password, String fullname, String isAdmin) {
        String query = "update account set password = ?, fullname=?, role=?,avatar=? where id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, fullname);
            ps.setString(3, isAdmin);
            ps.setString(4, avatar);
            ps.setString(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
