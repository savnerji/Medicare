/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.servlets;

import com.medicare.dao.Patientdao;
import com.medicare.entities.surveydata;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author rahul
 */

@MultipartConfig
public class surveyServlet extends HttpServlet {

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
           
            String name=request.getParameter("name");
            String age=request.getParameter("age");
            String aadharCard=request.getParameter("aadhar");
            String disease1=request.getParameter("disease1");
            String disease2=request.getParameter("disease2");
            String disease3=request.getParameter("disease3");
            String disease4 =request.getParameter("disease4");
            String medicine1 =request.getParameter("medicine1");
            String medicine2 =request.getParameter("medicine2");
            String medicine3 =request.getParameter("medicine3");
            String bloodGroup =request.getParameter("blood");
            
            Part part=request.getPart("report");
            
            String reportname=part.getSubmittedFileName();
            
            String path = request.getRealPath("/") + "surveyreports-pic" + File.separator + reportname;
            surveydata formdata=new surveydata(name, age, aadharCard, disease1, disease2, disease3, disease4, medicine1, medicine2, medicine3, reportname, bloodGroup);
            
            Patientdao dao=new Patientdao(ConnectionProvider.getConnection());
                 
            
            
            if(dao.saveSurveyData(formdata))
            {
            if (picUpdate.saveFile(part.getInputStream(), path)) {

                
               
                    out.println("done");
                    
                    

                } else {

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
