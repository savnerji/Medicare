/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.servlets;

import com.medicare.dao.Bloodbankdao;
import com.medicare.entities.BloodBank;
import com.medicare.entities.Message;
import com.medicare.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rahul
 */
public class BloodBankSignInServlet extends HttpServlet {

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
         
            String email=request.getParameter("bank_email");
            String password=request.getParameter("bank_password");
            
            Bloodbankdao dao=new Bloodbankdao(ConnectionProvider.getConnection());
            
            BloodBank bank=dao.getBloodBankByEmailAndPassword(email,password);
            
            
            if(email!="" && password!="")
            {
            if(bank == null)
            {
                System.out.println("user is null"+"  " +bank);
                Message msg=new Message("invalid details ! please try again...","error","#e0071c");
                HttpSession s=request.getSession();
                s.setAttribute("msg", msg);
                response.sendRedirect("bloodbanklogin.jsp");
            }
            else
            {
               // System.out.println("user is exist"+"  " +user);
                HttpSession s=request.getSession();
                s.setAttribute("currentBloodBank",bank );
                response.sendRedirect("BloodBankHome.jsp");
            }
            }
            else
            {
//                HttpSession s=request.getSession();
//                
//                response.sendRedirect("LogIn.jsp");
                
                 Message msg=new Message("Please..enter Details...","error","#e0071c");
                HttpSession s=request.getSession();
                s.setAttribute("msg", msg);
                response.sendRedirect("bloodbanklogin.jsp");

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
