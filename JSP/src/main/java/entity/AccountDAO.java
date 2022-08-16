package dao;

import entity.Account;
import utils.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
}
