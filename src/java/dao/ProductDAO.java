/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Brand;
import model.Cart;
import model.Category;
import model.Image;
import model.Item;
import model.Product;
import model.StatusProduct;

/**
 *
 * @author MSI
 */
public class ProductDAO extends DBContext {

    private PreparedStatement ps;
    private ResultSet rs;

    public List<Product> getAllProduct() {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID";
        List<Product> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                list.add(product);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getListByPage(List<Product> list,
            int start, int end) {
        List<Product> listPage = new ArrayList<>();
        for (int i = start; i < end; i++) {
            listPage.add(list.get(i));
        }
        return listPage;
    }

    public List<Product> getProductByCategoryID(int categoryID) {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "where c.CategoryID=?";
        List<Product> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                list.add(product);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductByBrandID(int brandID) {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "where b.BrandID=?";
        List<Product> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, brandID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                list.add(product);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductByBrandID_CategoryID(int brandID, int categoryID) {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "where b.BrandID=? and c.CategoryID=?";
        List<Product> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, brandID);
            ps.setInt(2, categoryID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                list.add(product);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchProductByName(String key) {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "where p.ProductName like ?";
        List<Product> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + key + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                list.add(product);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Product getProductByID(String productID) {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "where p.ProductID = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            if (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                return product;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Image> getImagesByProductID(int productID) {
        String sql = "select * from [Image] \n"
                + "where ProductID =?";
        List<Image> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Image image = new Image(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3));
                list.add(image);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    // Checkbox
    public List<Product> checkBoxProductByCategory(int[] categoryID) {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "where 1=1 ";

        List<Product> list = new ArrayList<>();
        if (categoryID != null) {
            sql += " and p.CategoryID in(";
            for (int i = 0; i < categoryID.length; i++) {
                sql += categoryID[i] + ",";

            }
            sql = sql.substring(0, sql.length() - 1);
            sql += ")";
        }
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                list.add(product);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> sortPriceIncreasing() {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "order by p.Price asc";
        List<Product> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                list.add(product);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> sortPriceDecreasing() {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "join Brand b on p.BrandID=b.BrandID\n"
                + "join Category c on c.CategoryID=p.CategoryID\n"
                + "join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "order by p.Price desc";
        List<Product> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                list.add(product);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void addOrder(Account a, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            //add order
            String sql = "INSERT INTO [dbo].[Order]\n"
                    + "           ([AccountID]\n"
                    + "           ,[OrderDate]\n"
                    + "           ,[Note]\n"
                    + "           ,[Total])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, a.getAccountID());
            ps.setString(2, date);
            ps.setString(3, "");
            ps.setDouble(4, cart.getTotalPrice());
            ps.executeUpdate();
            //lay id cua order vua add
            String sql1 = "select top 1 OrderID from [Order] order by OrderID desc";
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            rs = ps1.executeQuery();
            // add bang OrderDetail
            if (rs.next()) {
                int orderID = rs.getInt(1);
                for (Item i : cart.getItem()) {
                    String sql2 = "INSERT INTO [dbo].[OrderDetail]\n"
                            + "           ([OrderID]\n"
                            + "           ,[ProductID]\n"
                            + "           ,[Price]\n"
                            + "           ,[Quantity])\n"
                            + "     VALUES\n"
                            + "           (?\n"
                            + "           ,?\n"
                            + "           ,?\n"
                            + "           ,?)";
                    PreparedStatement ps2 = connection.prepareStatement(sql2);
                    ps.setInt(1, orderID);
                    ps.setInt(2, i.getProduct().getProductID());
                    ps.setDouble(3, i.getProduct().getPrice());
                    ps.setInt(4, i.getQuantity());
                    ps.executeUpdate();
                }
            }
            // cap nhat lai so luong san pham
            String sql3 = "update Product set quantity = quantity-? where ProductID = ?";
            PreparedStatement ps3 = connection.prepareStatement(sql3);
            for (Item i : cart.getItem()) {
                ps3.setInt(1, i.getQuantity());
                ps3.setInt(2, i.getProduct().getProductID());
                ps3.executeUpdate();
            }
        } catch (Exception e) {
        }
    }

    public List<Category> getAllCategory() {
        String sql = "select * from Category";
        List<Category> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(1), rs.getString(2));

                list.add(category);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Brand> getAllBrand() {
        String sql = "select * from Brand";
        List<Brand> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Brand brand = new Brand(rs.getInt(1), rs.getString(2));

                list.add(brand);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    // Insert Product
    public void insert(String productName, double price, int quantity,
            String imageURL, String descripton, int categoryID, int brandID, int statusID) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([ProductName]\n"
                + "           ,[Price]\n"
                + "           ,[Quantity]\n"
                + "           ,[ImageURL]\n"
                + "           ,[Description]\n"
                + "           ,[CategoryID]\n"
                + "           ,[BrandID]\n"
                + "           ,[StatusID])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";

        try {
            ps = connection.prepareStatement(sql);

            ps.setString(1, productName);
            ps.setDouble(2, price);
            ps.setInt(3, quantity);
            ps.setString(4, imageURL);
            ps.setString(5, descripton);
            ps.setInt(6, categoryID);
            ps.setInt(7, brandID);
            ps.setInt(8, statusID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public boolean CheckExistProductByID(int productID) {
        String sql = "select * from Product\n"
                + "where ProductID = ?";

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productID);
            rs = ps.executeQuery();
            if (rs.next()) {

                return true;
            }

        } catch (Exception e) {
        }
        return false;
    }

    public Product GetAProductByID(int productID) {
        String sql = "select p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "                p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "                join Brand b on p.BrandID=b.BrandID\n"
                + "                join Category c on c.CategoryID=p.CategoryID\n"
                + "                join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "                where p.ProductID = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, productID);
            rs = ps.executeQuery();
            if (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                return product;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public Product GetNewProduct() {
        String sql = "select top 1 p.ProductID,p.ProductName,p.Price,p.Quantity,p.ImageURL,\n"
                + "                p.Description,c.CategoryID,c.Name,b.BrandID,b.Name,sp.StatusID,sp.Status from Product p\n"
                + "                join Brand b on p.BrandID=b.BrandID\n"
                + "                join Category c on c.CategoryID=p.CategoryID\n"
                + "                join StatusProduct sp on sp.StatusID=p.StatusID\n"
                + "                order by p.ProductID desc";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                Category category = new Category(rs.getInt(7), rs.getString(8));
                Brand brand = new Brand(rs.getInt(9), rs.getString(10));
                StatusProduct statusProduct = new StatusProduct(rs.getInt(11), rs.getString(12));
                Product product = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        category,
                        brand,
                        statusProduct);
                return product;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void delete(String productID) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "WHERE ProductID = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(String productID, String productName, double price, int quantity, String imageURL,
            String description, int categoryID, int brandID, int statusID) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "                   SET [ProductName] = ?\n"
                + "                     ,[Price] = ?\n"
                + "                     ,[Quantity] = ?\n"
                + "                     ,[ImageURL] = ?\n"
                + "                     ,[Description] =?\n"
                + "                     ,[CategoryID] = ?\n"
                + "                     ,[BrandID] = ?\n"
                + "                     ,[StatusID] = ?\n"
                + "                 WHERE ProductID=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, productName);
            ps.setDouble(2, price);
            ps.setInt(3, quantity);
            ps.setString(4, imageURL);
            ps.setString(5, description);
            ps.setInt(6, categoryID);
            ps.setInt(7, brandID);
            ps.setInt(8, statusID);
            ps.setString(9, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertBrand(String brandName) {
        String sql = "INSERT INTO [dbo].[Brand]\n"
                + "           ([Name])\n"
                + "     VALUES\n"
                + "           (?)";

        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, brandName);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteBrand(String brandID) {
        String sql = "delete from [dbo].[Brand] where BrandID =?";

        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, brandID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertCategory(String categoryName) {
        String sql = "INSERT INTO [dbo].[Category]\n"
                + "           ([Name])\n"
                + "     VALUES\n"
                + "           (?)";

        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, categoryName);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCategory(String categoryID) {
        String sql = "delete from [dbo].[Category] where CategoryID =?";

        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, categoryID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Double getTotalMoney(int i) {
        String sql = "select SUM(total) from [Order] where MONTH(OrderDate) =  ?";
        List<Double> list = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, i);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getDouble(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        LocalDate curDate = LocalDate.now();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String date = curDate.toString();
        System.out.println(sdf.format(date));
        
//        int[] c = {1, 4};
//        Product p = dao.GetAProductByID(55);
//        System.out.println(p.getProductName());
//        dao.update("55", "ABC", 213, 3, "", "", 1, 1, 1);
//        System.out.println(p.getProductName());
//        List<Product> list = dao.checkBoxProductByCategory(c);
//        System.out.println(list);
    }

}
