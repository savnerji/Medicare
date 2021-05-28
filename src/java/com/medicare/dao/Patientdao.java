/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.dao;

import com.medicare.entities.User;
import com.medicare.entities.surveydata;

import java.sql.*;

/**
 *
 * @author rahul
 */
public class Patientdao {

    private Connection con;

    public Patientdao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;

        try {
            String q = "insert into user(user_name,user_age,user_gender,user_dob,user_address,user_city,user_state,user_aadharcard,user_contact,user_email,user_pic,user_password) values(?, ? ,? ,?, ?, ?, ?, ?, ?, ?, ?, ? )";

            PreparedStatement pstmt = this.con.prepareStatement(q);

            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getAge());
            pstmt.setString(3, user.getGender());
            pstmt.setString(4, user.getDob());
            pstmt.setString(5, user.getAddress());
            pstmt.setString(6, user.getCity());
            pstmt.setString(7, user.getState());
            pstmt.setString(8, user.getAddhar_nomber());
            pstmt.setString(9, user.getContact());
            pstmt.setString(10, user.getEmail());
            pstmt.setString(11, user.getPicName());
            pstmt.setString(12, user.getPassword());

            pstmt.executeUpdate();

            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public User getUserByEmailAndPassword(String email, String password) {

        User user = null;

        try {

            String query = "select * from user where user_email=? AND user_password=?";

            PreparedStatement pstmt = this.con.prepareStatement(query);

            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new User();

                user.setName(set.getString("user_name"));
                user.setAge(set.getString("user_age"));
                user.setGender(set.getString("user_gender"));
                user.setDob(set.getString("user_dob"));
                user.setAddress(set.getString("user_address"));
                user.setCity(set.getString("user_city"));
                user.setState(set.getString("user_state"));
                user.setAddhar_nomber(set.getString("user_aadharcard"));
                user.setContact(set.getString("user_contact"));
                user.setEmail(set.getString("user_email"));
                user.setPicName(set.getString("user_pic"));
                user.setPassword(set.getString("user_password"));
            }

            return user;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;

    }

    
    public boolean saveSurveyData( surveydata data)
    {
    boolean f=false;
    
        try {
            
            String q="insert into surveydata(name,age,aadharnomber,disease1,disease2,disease3,disease4,reportfile,medicine1,medicine2,medicine3,bloodgroup) values(?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, data.getName());
             pstmt.setString(2, data.getAge());
              pstmt.setString(3, data.getAadharcard());
               pstmt.setString(4, data.getDisease1());
               pstmt.setString(5, data.getDisease2());
               pstmt.setString(6, data.getDisease3());
               pstmt.setString(7, data.getDisease4());
               pstmt.setString(8, data.getReportname());
               pstmt.setString(9, data.getMedicine1());
               pstmt.setString(10, data.getMedicine2());
               pstmt.setString(11,data.getMedicine3());
               pstmt.setString(12, data.getBloodgroup());
               
               pstmt.executeUpdate();
               f=true;
               
               
               
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
    
    
    
    public surveydata getServeyUser(String aadhar)
    {
    surveydata data=null;
    
    
        try {
            
            String q="select * from surveydata where aadharnomber=?";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, aadhar);
            
            ResultSet set=pstmt.executeQuery();
            
            if(set.next())
            {
            data=new surveydata();
            
            data.setName(set.getString("name"));
            data.setAge(set.getString("age"));
            data.setAadharcard(set.getString("aadharnomber"));
            data.setDisease1(set.getString("disease1"));
            data.setDisease2(set.getString("disease2"));
            data.setDisease3(set.getString("disease3"));
            data.setDisease4(set.getString("disease4"));
            data.setReportname(set.getString("reportfile"));
            data.setMedicine1(set.getString("medicine1"));
            data.setMedicine2(set.getString("medicine2"));
            data.setMedicine3(set.getString("medicine3"));
            data.setBloodgroup(set.getString("bloodgroup"));
            
            
            
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return data;
    }
    
    
     public boolean saveEditSurveyData( surveydata data)
    {
    boolean f=false;
    
        try {
            
            String q="update surveydata set name=?,age=?,aadharnomber=?,disease1=?,disease2=?,disease3=?,disease4=?,reportfile=?,medicine1=?,medicine2=?,medicine3=?,bloodgroup=? where aadharnomber=? ";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, data.getName());
             pstmt.setString(2, data.getAge());
              pstmt.setString(3, data.getAadharcard());
               pstmt.setString(4, data.getDisease1());
               pstmt.setString(5, data.getDisease2());
               pstmt.setString(6, data.getDisease3());
               pstmt.setString(7, data.getDisease4());
               pstmt.setString(8, data.getReportname());
               pstmt.setString(9, data.getMedicine1());
               pstmt.setString(10, data.getMedicine2());
               pstmt.setString(11,data.getMedicine3());
               pstmt.setString(12, data.getBloodgroup());
               pstmt.setString(13, data.getAadharcard());
             
               
               pstmt.executeUpdate();
               f=true;
               
               
               
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
}
