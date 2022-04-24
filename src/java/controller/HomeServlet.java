/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Brand;
import model.Cart;
import model.Category;
import model.Item;
import model.Product;

/**
 *
 * @author MSI
 */
public class HomeServlet extends HttpServlet {

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
            out.println("<title>Servlet ListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListServlet at " + request.getContextPath() + "</h1>");
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
        List<Product> listProduct;
        List<Category> listCategory = dao.getAllCategory();
        List<Brand> listBrand = dao.getAllBrand();

        String brandID_raw = request.getParameter("brandID");
        String categoryID_raw = request.getParameter("categoryID");
        int categoryID, brandID;
        if (categoryID_raw == null && brandID_raw == null) {
//            categoryID = 1;
            listProduct = dao.getAllProduct();
        } else if (categoryID_raw != null && brandID_raw == null) {
            categoryID = Integer.parseInt(categoryID_raw);
            request.setAttribute("categoryID", categoryID);
            listProduct = dao.getProductByCategoryID(categoryID);
        } else if (categoryID_raw == null && brandID_raw != null) {
            brandID = Integer.parseInt(brandID_raw);
            request.setAttribute("brandID", brandID);
            listProduct = dao.getProductByBrandID(brandID);
        } else {
            brandID = Integer.parseInt(brandID_raw);
            categoryID = Integer.parseInt(categoryID_raw);
            request.setAttribute("brandID", brandID);
            request.setAttribute("categoryID", categoryID);
            listProduct = dao.getProductByBrandID_CategoryID(brandID, categoryID);
        }

        String sort_raw = request.getParameter("sort");
        int sort;
        if (sort_raw != null) {
            try {
                sort = Integer.parseInt(sort_raw);
                if (sort == 1) {
                    listProduct = dao.sortPriceIncreasing();
                }
                if (sort == 2) {
                    listProduct = dao.sortPriceDecreasing();
                }

            } catch (Exception e) {
            }
        }

//        phân trang
            int page, numPerPage = 6;
            int size = listProduct.size();
            int numPage = (size % numPerPage == 0 ? (size / 6) : (size / 6) + 1);
            String xPage = request.getParameter("page");
            if (xPage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xPage);
            }

            int start, end;
            start = (page - 1) * numPerPage;
            end = Math.min(page * numPerPage, size);
            List<Product> listPageProduct = dao.getListByPage(listProduct, start, end);

            Cookie[] arr = request.getCookies();
            String txt = "";
            if (arr != null) {
                for (Cookie o : arr) {
                    if (o.getName().equals("cart")) {
                        txt += o.getValue();
                    }
                }
            }
            List<Product> listAllProduct = dao.getAllProduct();
            Cart cart = new Cart(txt, listAllProduct);
            List<Item> listItem = cart.getItem();
            int n;
            if (listItem != null) {
                n = listItem.size();
            } else {
                n = 0;
            }

            Product newProduct = dao.GetNewProduct();

            request.setAttribute("size", n);
            request.setAttribute("listBrand", listBrand);
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("listPageProduct", listPageProduct);
            request.setAttribute("newProduct", newProduct);
            request.setAttribute("page", page);
            request.setAttribute("numPage", numPage);
            request.setAttribute("pageInclude", "home.jsp");
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String key = request.getParameter("key");
            if (key == null) {
                key = "";
            }

            ProductDAO dao = new ProductDAO();
            List<Product> listProduct = dao.searchProductByName(key);
            List<Category> listCategory = dao.getAllCategory();
            List<Brand> listBrand = dao.getAllBrand();

//        phân trang
            int page, numPerPage = 6;
            int size = listProduct.size();
            int numPage = (size % numPerPage == 0 ? (size / 6) : (size / 6) + 1);
            String xPage = request.getParameter("page");
            if (xPage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xPage);
            }

            int start, end;
            start = (page - 1) * numPerPage;
            end = Math.min(page * numPerPage, size);
            List<Product> listPageProduct = dao.getListByPage(listProduct, start, end);

            Product newProduct = dao.GetNewProduct();

            request.setAttribute("listBrand", listBrand);
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("listPageProduct", listPageProduct);
            request.setAttribute("newProduct", newProduct);
            request.setAttribute("page", page);
            request.setAttribute("numPage", numPage);
            request.setAttribute("key", key);
            request.setAttribute("pageInclude", "home.jsp");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
