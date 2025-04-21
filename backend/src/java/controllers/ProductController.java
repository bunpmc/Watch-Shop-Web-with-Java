 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.products.ProductDAO;
import models.products.ProductDTO;

/**
 *
 * @author Minh Châu
 */
@WebServlet(name = "ProductController", urlPatterns = {"/ProductController"})
public class ProductController extends HttpServlet {

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

        String action = (String) request.getAttribute("action");

        if (action.equalsIgnoreCase("productList")) {
            String keyword = (String) request.getAttribute("keyword");

            if (keyword == null || keyword.isEmpty()) {
                keyword = "";
            }

            ProductDAO dao = new ProductDAO();
            ArrayList<ProductDTO> list = dao.list(keyword);

            if (!list.isEmpty()) {
                request.setAttribute("productList", list);
                request.getRequestDispatcher("/Products.jsp").forward(request, response);
            } else {
                System.out.println("Product List is empty");
                request.setAttribute("productList", list);
                request.getRequestDispatcher("/Products.jsp").forward(request, response);
            }
        } else if (action.equalsIgnoreCase("sortProduct")) {
            String category = (String) request.getAttribute("category");
            String sort = (String) request.getAttribute("sort");

            if (category == null || category.equalsIgnoreCase("")) {
                category = "";
            }

            if (sort == null || sort.equalsIgnoreCase("")) {
                sort = "";
            }

            ProductDAO dao = new ProductDAO();
            ArrayList<ProductDTO> list = dao.sortProducts(category, sort);

            if (!list.isEmpty()) {
                request.setAttribute("productList", list);
                request.getRequestDispatcher("/Products.jsp").forward(request, response);
            } else {
                System.out.println("Product List is empty");
                request.setAttribute("productList", list);
                request.getRequestDispatcher("/Products.jsp").forward(request, response);
            }
        } else if (action.equalsIgnoreCase("productDetail")) {
            String productID = (String) request.getAttribute("productID");
            int id = 0;
            
            try {
                id = Integer.parseInt(productID);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
            
            ProductDAO dao = new ProductDAO();
            ProductDTO product = dao.load(id);
            
            ArrayList<ProductDTO> list = dao.related(id);
            
            request.setAttribute("product", product);
            request.setAttribute("related", list);
            request.getRequestDispatcher("/Product-detail.jsp").forward(request, response);
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
        processRequest(request, response);
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
