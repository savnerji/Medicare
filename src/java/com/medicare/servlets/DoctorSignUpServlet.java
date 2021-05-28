/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.servlets;

import com.medicare.dao.Doctordao;
import com.medicare.entities.doctor;
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
public class DoctorSignUpServlet extends HttpServlet {

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

            String name = request.getParameter("docname");
            String docDegrees = request.getParameter("degrees");
            String docDob = request.getParameter("dob");
            String specialistIn = request.getParameter("specialistIn");
            String docCategory = request.getParameter("category");
            String clinic = request.getParameter("clinic");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String experience = request.getParameter("experience");
            String docAverage = request.getParameter("average");
            String docEmail = request.getParameter("email");
            String docContact = request.getParameter("contact");
            String docPassword = request.getParameter("password");
            String docAadhar = request.getParameter("aadhar");
            Part part = request.getPart("profilePic");

            String profileName = part.getSubmittedFileName();

            doctor doctor = new doctor(name, docDegrees, docDob, specialistIn, docCategory, clinic, address, city, state, experience, docAverage, docEmail, docContact, docPassword, docAadhar, profileName);

            Doctordao dao = new Doctordao(ConnectionProvider.getConnection());

            if (dao.saveDoctor(doctor)) {

                String path = request.getRealPath("/") + "DoctorPic" + File.separator + profileName;
                if (picUpdate.saveFile(part.getInputStream(), path)) {
                    out.println("done");
                } else {
                    out.println("error");
                }

            } else {
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
