/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Brand;
import model.Category;
import model.Image;
import model.Product;
import model.StatusProduct;

/**
 *
 * @author MSI
 */
public class AccountDAO extends DBContext {

    private PreparedStatement ps;
    private ResultSet rs;

    public Account loginAccount(String username, String password) {
        String sql = "select * from Account\n"
                + "where Username=? and Password=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                Account admin = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                return admin;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExisted(String username) {
        String sql = "select * from Account where Username=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                Account admin = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                return admin;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void signUp(String username, String password, String name,
            String phone, String email, String address) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([Username]\n"
                + "           ,[Password]\n"
                + "           ,[Name]\n"
                + "           ,[Phone]\n"
                + "           ,[Email]\n"
                + "           ,[Address]\n"
                + "           ,[RoleID])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.setString(5, email);
            ps.setString(6, address);
            ps.setInt(7, 2);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Account> getTop3Customer() {
        String sql = "select top 3 o.AccountID,a.Name,SUM(o.Total) as'TotalMoney' from [Order] o\n"
                + "join Account a on a.AccountID=o.AccountID\n"
                + "where a.RoleID=2\n"
                + "group by o.AccountID,a.Name\n"
                + "order by TotalMoney desc";
        List<Account> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account account = new Account(rs.getInt(1), rs.getString(2), rs.getDouble(3));
                list.add(account);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        int[] c = {1, 4};
        Account a = dao.checkAccountExisted("phu");
        System.out.println(a);
//        dao.signUp("sa", "123", "XYZ", "21312412", "sa@gmail.com", "abcxyz");
//        List<Product> list = dao.checkBoxProductByCategory(c);
//        System.out.println(list);
    }

}
