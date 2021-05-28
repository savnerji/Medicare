/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.servlets;

import com.medicare.dao.Bloodbankdao;
import com.medicare.entities.BloodBank;
import com.medicare.helper.ConnectionProvider;
import com.medicare.helper.picUpdate;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author rahul
 */

@MultipartConfig
public class BankSignUpServlet extends HttpServlet {

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
            String name=request.getParameter("bankName");
            String opening=request.getParameter("opening");
            String staff=request.getParameter("staff");
            String type=request.getParameter("bank_type");
            String email=request.getParameter("bank_email");
            String password=request.getParameter("bank_password");
            String contact=request.getParameter("bank_contact");
            String address=request.getParameter("bank_address");
            String city=request.getParameter("bank_city");
            String state=request.getParameter("bank_state");
            String licenseNomber=request.getParameter("license_nomber");
             Part part=request.getPart("licensePic");
             
            String licenseFileName=part.getSubmittedFileName();
            
            
            BloodBank bank=new BloodBank(name, opening, staff, type, licenseFileName, licenseNomber, contact, email, password, address, city, state);
                
            Bloodbankdao dao=new Bloodbankdao(ConnectionProvider.getConnection());
            if(dao.saveBank(bank))
            {
                String path = request.getRealPath("/") + "BloodBankLicenseFilesPic" + File.separator + licenseFileName;
                if(picUpdate.saveFile(part.getInputStream(),path ))
                {
                 out.println("done");
                }
                else{
                out.println("error");
                }
           
            }
            else
            {
            out.println("error");
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
