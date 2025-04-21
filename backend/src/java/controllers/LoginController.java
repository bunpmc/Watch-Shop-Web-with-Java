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
import javax.servlet.http.HttpSession;
import models.users.UserDAO;
import models.users.UserDTO;

/**
 *
 * @author Minh Châu
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

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
        
        if(action.equalsIgnoreCase("login")) {
            String phone = (String) request.getAttribute("phone");
            String pwd = (String) request.getAttribute("password");
            
            UserDAO dao = new UserDAO();
            UserDTO user = dao.login(phone, pwd);
            
            if(user != null) {
                HttpSession session = request.getSession(true);
                session.setAttribute("user", user);
                
                response.sendRedirect("./home-page.jsp");
            } else {
                request.setAttribute("error", "Login Failed, try again!");
                request.getRequestDispatcher("./account.jsp").forward(request, response);
            }
        } else if (action.equalsIgnoreCase("logout")) {
            HttpSession session = request.getSession(false);
            
            if(session != null) {
                session.invalidate();
                request.getRequestDispatcher("./home-page.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Logout Failed");
                request.getRequestDispatcher("./home-page.jsp").forward(request, response);
            }
        } else if (action.equalsIgnoreCase("register")) {
            String username = (String) request.getAttribute("username");
            String phone = (String) request.getAttribute("phone");
            String pwd = (String) request.getAttribute("password");
            
            UserDAO dao = new UserDAO();
            UserDTO user = dao.register(username, phone, pwd);
            
            if(user != null) {
                HttpSession session = request.getSession(true);
                session.setAttribute("user", user);
                
                response.sendRedirect("./home-page.jsp");
            } else {
                request.setAttribute("error", "Login Failed, try again!");
                request.getRequestDispatcher("./account.jsp").forward(request, response);
            }
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
