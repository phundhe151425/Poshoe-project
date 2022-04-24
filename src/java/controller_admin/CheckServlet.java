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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Category;
import model.Product;

/**
 *
 * @author MSI
 */
public class CheckServlet extends HttpServlet {

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
            out.println("<title>Servlet CheckServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckServlet at " + request.getContextPath() + "</h1>");
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
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);
        Account account = (Account) session.getAttribute("account");
        if (account == null) {
            PrintWriter out = response.getWriter();
            out.println("Not logged in");
        } else {
            if ((action.equals("add"))) {
                request.getRequestDispatcher("add").forward(request, response);
            }
            if ((action.equals("delete"))) {
                ProductDAO dao = new ProductDAO();
                String productID = request.getParameter("productID");
                dao.delete(productID);
                request.getRequestDispatcher("delete").forward(request, response);
            }
            if ((action.equals("deletebrand"))) {
                ProductDAO dao = new ProductDAO();
                String brandID = request.getParameter("brandID");
                dao.deleteBrand(brandID);
                request.getRequestDispatcher("deletebrand").forward(request, response);
            }
            if ((action.equals("deletecategory"))) {
                ProductDAO dao = new ProductDAO();
                String categoryID = request.getParameter("categoryID");
                dao.deleteCategory(categoryID);
                request.getRequestDispatcher("deletecategory").forward(request, response);
            }
            
            if ((action.equals("update"))) {
                String productID_raw = request.getParameter("productID");
                try {
                    int productID = Integer.parseInt(productID_raw);
                    ProductDAO dao = new ProductDAO();
                    Product product = dao.GetAProductByID(productID);
                    request.setAttribute("product", product);
                    request.getRequestDispatcher("update").forward(request, response);
                } catch (Exception e) {
                }

            }
        }
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
        processRequest(request, response);
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
