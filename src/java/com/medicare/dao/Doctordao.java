/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.dao;

import com.medicare.entities.BloodBank;
import com.medicare.entities.doctor;
import com.medicare.entities.surveydata;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 *
 * @author rahul
 */
public class Doctordao {
    
    
     private Connection con;

    public Doctordao(Connection con) {
        this.con = con;
    }
    
    
    public boolean saveDoctor(doctor doc)
    {
    boolean f=false;
    
        try {
            String q="insert into doctor(doc_name,doc_degree,doc_dob,doc_specialist,doc_category,doc_clinicname,clinic_address,clinic_city,clinic_state,experience_year,average_patient,doc_email,doc_contact,doc_password,doc_aadhar,doc_pic) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
                       PreparedStatement pstmt=this.con.prepareStatement(q);

            pstmt.setString(1, doc.getDocName());
            pstmt.setString(2, doc.getDocDegree());
            pstmt.setString(3, doc.getDocDob());
            pstmt.setString(4, doc.getDocSpecialist());
            pstmt.setString(5, doc.getDocCategory());
            pstmt.setString(6, doc.getDocClinicName());
            pstmt.setString(7, doc.getClinicAddress());
            pstmt.setString(8, doc.getClinicCity());
            pstmt.setString(9, doc.getClinicState());
            pstmt.setString(10, doc.getExperienceYear());
            pstmt.setString(11, doc.getAvgPatient());
            pstmt.setString(12, doc.getDocEmail());
            pstmt.setString(13, doc.getDocContact());
            pstmt.setString(14, doc.getDocPassword());
            pstmt.setString(15, doc.getClinicAddress());
            pstmt.setString(16, doc.getDocPic());
            
            pstmt.executeUpdate();
            f=true;
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return f;
    
    }
    
    //for login
    
    public doctor getDoctorByEmailAndPassword(String email, String password) {

        doctor doc = null;

        try {

            String query = "select * from doctor where doc_email=? AND doc_password=?";

            PreparedStatement pstmt = this.con.prepareStatement(query);

            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                doc = new doctor();

                doc.setDocName(set.getString("doc_name"));
                doc.setDocDegree(set.getString("doc_degree"));
                doc.setDocDob(set.getString("doc_dob"));
                doc.setDocSpecialist(set.getString("doc_specialist"));
                doc.setDocCategory(set.getString("doc_category"));
                doc.setDocClinicName(set.getString("doc_clinicname"));
                doc.setClinicAddress(set.getString("clinic_address"));
                doc.setClinicCity(set.getString("clinic_city"));
                doc.setClinicState(set.getString("clinic_state"));
                doc.setExperienceYear(set.getString("experience_year"));
                doc.setAvgPatient(set.getString("average_patient"));
                doc.setDocEmail(set.getString("doc_email"));
                doc.setDocContact(set.getString("doc_contact"));
                doc.setDocPassword(set.getString("doc_password"));
                doc.setDocAadhar(set.getString("doc_aadhar"));
                doc.setDocPic(set.getString("doc_pic"));
                
       
            }

           

        } catch (Exception e) {
            e.printStackTrace();
        }

        return doc;

    }
    
    
     public  List<doctor> getAllDoctor()
    {
        
         List<doctor> lst=null;
        try {
            String q="select * from doctor order by did desc";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            
            
            ResultSet set=pstmt.executeQuery();
            
             lst=new ArrayList<>();
            while(set.next())
            {
            String name=set.getString("doc_name");
            String degree=set.getString("doc_degree");
            String dob=set.getString("doc_dob");
            String specialist=set.getString("doc_specialist");
            String Category=set.getString("doc_category");
            String clinicName=set.getString("doc_clinicname");
            String address=set.getString("clinic_address");
            String city=set.getString("clinic_city");
            String state=set.getString("clinic_state");
            String experience=set.getString("experience_year");
            String avgPatient=set.getString("average_patient");
            String email=set.getString("doc_email");
            String contact=set.getString("doc_contact");
           
            doctor doctor=new doctor(name,degree,dob,specialist,Category,clinicName,address,city,state,experience,avgPatient,email,contact);
            
            lst.add(doctor);
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return lst;
    }
     
     
      public  List<doctor> getDoctorByType(String doctoSpecification)
    {
        
         List<doctor> lst=null;
        try {
            String q="select * from doctor where doc_category =?";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, doctoSpecification);
            
            ResultSet set=pstmt.executeQuery();
            
             lst=new ArrayList<>();
            while(set.next())
            {
           String name=set.getString("doc_name");
            String degree=set.getString("doc_degree");
            String dob=set.getString("doc_dob");
            String specialist=set.getString("doc_specialist");
            String Category=set.getString("doc_category");
            String clinicName=set.getString("doc_clinicname");
            String address=set.getString("clinic_address");
            String city=set.getString("clinic_city");
            String state=set.getString("clinic_state");
            String experience=set.getString("experience_year");
            String avgPatient=set.getString("average_patient");
            String email=set.getString("doc_email");
            String contact=set.getString("doc_contact");
           doctor doctor=new doctor(name,degree,dob,specialist,Category,clinicName,address,city,state,experience,avgPatient,email,contact);
            
            lst.add(doctor);
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return lst;
    }
      
      
      public  List<surveydata> getPatientDetails(String aadhar)
      {
      List<surveydata> data=null;
      
       try {
            String q="select * from surveydata where aadharnomber =?";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, aadhar);
            
            ResultSet set=pstmt.executeQuery();
            
              data=new ArrayList<>();
            while(set.next())
            {
           String name=set.getString("name");
            String age=set.getString("age");
            String aadharcard=set.getString("aadharnomber");
            String disease1=set.getString("disease1");
            String disease2=set.getString("disease2");
            String disease3=set.getString("disease3");
            String disease4=set.getString("disease4");
            String reportname=set.getString("reportfile");
            String medicine1=set.getString("medicine1");
            String medicine2=set.getString("medicine2");
            String medicine3=set.getString("medicine3");
            String bloodgroup=set.getString("bloodgroup");
            
       surveydata datas= new surveydata( name,  age,  aadharcard,  disease1,  disease2,  disease3,  disease4,  reportname,  medicine1,  medicine2,  medicine3,  bloodgroup); 
            
            data.add(datas);
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
     
          return data;
      }
    
    
}
