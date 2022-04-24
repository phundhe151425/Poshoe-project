/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_admin;

import dao.AccountDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Brand;
import model.Category;
import model.Product;

/**
 *
 * @author MSI
 */
public class UpdateServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        String productID = request.getParameter("productID");
        List<Category> listCategory = dao.getAllCategory();
        List<Brand> listBrand = dao.getAllBrand();

        Product product = dao.getProductByID(productID);

        request.setAttribute("listCategory", listCategory);
        request.setAttribute("listBrand", listBrand);
        request.setAttribute("product", product);
        request.setAttribute("pageInclude", "update.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);
        

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        String productID = request.getParameter("productID");
//        int productID;
        try {
//            productID = Integer.parseInt(productID_raw);

            String productName = request.getParameter("productName");
            String price_raw = request.getParameter("price");
            String quantity_raw = request.getParameter("quantity");
            String imageURL = request.getParameter("imageURL");
            String description = request.getParameter("description");
            String categoryID_raw = request.getParameter("categoryID");
            String brandID_raw = request.getParameter("brandID");
            String statusID_raw = request.getParameter("statusID");

            double price;
            int quantity, categoryID, brandID, statusID;
            price = Double.parseDouble(price_raw);
            quantity = Integer.parseInt(quantity_raw);
            categoryID = Integer.parseInt(categoryID_raw);
            brandID = Integer.parseInt(brandID_raw);
            statusID = Integer.parseInt(statusID_raw);

            dao.update(productID, productName, price, quantity, imageURL, description, categoryID, brandID, statusID);
            response.sendRedirect("manage");

        } catch (Exception e) {
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
