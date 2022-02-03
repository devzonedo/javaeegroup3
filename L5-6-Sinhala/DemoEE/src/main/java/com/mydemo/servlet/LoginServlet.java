/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mydemo.servlet;

import com.mydemo.bean.Student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author devzo
 */
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        System.out.println("Servlet>>LoginServlet");

        RequestDispatcher rd = null;

        try {
            String uname = request.getParameter("username");
            String pword = request.getParameter("pword");

            System.out.println("username:" + uname);
            System.out.println("Password:" + pword);

            if (uname.equalsIgnoreCase("admin") && pword.equalsIgnoreCase("123")) {
                
                
                //student object 
                Student mystu = new Student();
                mystu.setStuId(5);
                mystu.setFname("Kumara");
                mystu.setLname("Fernando");
                
                request.setAttribute("stut", mystu);
                
                rd = request.getRequestDispatcher("/home.jsp");
            } else {
                request.setAttribute("msg", "Invalid Username or Password");
                rd = request.getRequestDispatcher("/index.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        rd.forward(request, response);

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
