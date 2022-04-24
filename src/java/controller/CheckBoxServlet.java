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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

/**
 *
 * @author MSI
 */
public class CheckBoxServlet extends HttpServlet {

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
            out.println("<title>Servlet CheckBoxServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckBoxServlet at " + request.getContextPath() + "</h1>");
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
        String[] categoryID_raw = request.getParameterValues("categoryID");
        int[] categoryID=null;
        
        if(categoryID_raw!=null){
            categoryID = new int[categoryID_raw.length];
            for (int i = 0; i < categoryID.length; i++) {
                categoryID[i] = Integer.parseInt(categoryID_raw[i]);
            }
            
        }
        ProductDAO dao = new ProductDAO();
        List<Product> listProduct = dao.checkBoxProductByCategory(categoryID);
        List<Category> listCategory = dao.getAllCategory();
        boolean[] categoryIDs  =new boolean[listCategory.size()];
        for (int i = 0; i < categoryIDs.length; i++) {
            if(ischeck(listCategory.get(i).getCategoryID(), categoryID))
                categoryIDs[i] = true;
            else
                categoryIDs[i] = false;
        }


        //phân trang
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
        
        request.setAttribute("listPageProduct", listPageProduct);
        request.setAttribute("page", page);
        request.setAttribute("numPage", numPage);
        request.setAttribute("listCategory", listCategory);
        request.setAttribute("categoryIDs", categoryIDs);           
        request.setAttribute("pageInclude", "home.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
    private boolean ischeck(int categoryID, int[] categoryIDs) {
        if(categoryIDs==null)
            return false;
        else{
            for (int i = 0; i < categoryIDs.length; i++) {
                if(categoryIDs[i]==categoryID)
                    return true;
            }
            return false;
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
