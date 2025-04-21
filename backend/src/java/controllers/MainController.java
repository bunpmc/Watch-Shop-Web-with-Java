/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Minh Châu
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

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
        String action = request.getParameter("action");
        request.setAttribute("action", request.getParameter("action"));
        
        if(action.equalsIgnoreCase("login") || action.equalsIgnoreCase("logout") || action.equalsIgnoreCase("register")) {
            request.setAttribute("phone", request.getParameter("phone"));
            request.setAttribute("password", request.getParameter("password"));
            
            if(request.getParameter("username") != null || action.equalsIgnoreCase("register")) {
                request.setAttribute("username", request.getParameter("username"));
            }
            
            request.getRequestDispatcher("/LoginController").forward(request, response);
        } else if (action.equalsIgnoreCase("productList") || action.equals("")) {
            request.setAttribute("keyword", request.getParameter("keyword"));
            
            request.getRequestDispatcher("/ProductController").forward(request, response);
        } else if (action.equalsIgnoreCase("sortProduct")) {
            request.setAttribute("category", request.getParameter("category"));
            request.setAttribute("sort", request.getParameter("sort"));
            
            request.getRequestDispatcher("/ProductController").forward(request, response);
           
        } else if (action.equalsIgnoreCase("productDetail")) {
            request.setAttribute("productID", request.getParameter("productID"));
            
            request.getRequestDispatcher("/ProductController").forward(request, response);
        } else if (action.equalsIgnoreCase("placeOrder")) {
            String fullName = request.getParameter("fullName");
            String phoneNumber = request.getParameter("phoneNumber");
            String address = request.getParameter("address");
            
            if(fullName.isEmpty() || phoneNumber.isEmpty() || address.isEmpty() ) {
                request.setAttribute("warning", "Please fill out all the form below");
                request.getRequestDispatcher("CheckOutCart.jsp").forward(request, response);
            }
            
            request.setAttribute(action, "");
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
