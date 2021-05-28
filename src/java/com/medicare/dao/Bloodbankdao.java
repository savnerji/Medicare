/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.dao;

import com.medicare.entities.BloodAvailability;
import com.medicare.entities.BloodBank;
import com.medicare.entities.Organizecamp;
import com.medicare.entities.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rahul
 */
public class Bloodbankdao {
    
     private Connection con;

    public Bloodbankdao(Connection con) {
        this.con = con;
    }
    
    
    public boolean saveBank(BloodBank bank)
    {
    boolean f=false;
    
        try {
            String q="insert into bloodbanks(bank_name,bank_opening,nomberofstaff,bank_type,bank_licence,licence_nomber,bank_contact,bank_email,password,bank_address,bank_city,bank_state) values(?,?,?,?,?,?,?,?,?,?,?,?)";
            
                       PreparedStatement pstmt=this.con.prepareStatement(q);

            pstmt.setString(1, bank.getBank_name());
            pstmt.setString(2, bank.getBank_opening());
            pstmt.setString(3, bank.getNomberofstaff());
            pstmt.setString(4, bank.getBank_type());
            pstmt.setString(5, bank.getBank_licenSe());
            pstmt.setString(6, bank.getLicenseNomber());
            pstmt.setString(7, bank.getBank_contact());
            pstmt.setString(8, bank.getBank_email());
            pstmt.setString(9, bank.getPassword());
            pstmt.setString(10, bank.getBank_address());
            pstmt.setString(11, bank.getBank_city());
            pstmt.setString(12, bank.getBank_state());
            
            pstmt.executeUpdate();
            f=true;
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return f;
    
    }
    
    public BloodBank getBloodBankByEmailAndPassword(String email, String password) {

        BloodBank bank = null;

        try {

            String query = "select * from bloodbanks where bank_email=? AND password=?";

            PreparedStatement pstmt = this.con.prepareStatement(query);

            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                bank = new BloodBank();

                bank.setBank_name(set.getString("bank_name"));
                bank.setBank_opening(set.getString("bank_opening"));
                bank.setNomberofstaff(set.getString("nomberofstaff"));
                bank.setBank_type(set.getString("bank_type"));
                bank.setBank_licenSe(set.getString("bank_licence"));
                bank.setLicenseNomber(set.getString("licence_nomber"));
                bank.setBank_contact(set.getString("bank_contact"));
                bank.setBank_email(set.getString("bank_email"));
                bank.setPassword(set.getString("password"));
                bank.setBank_address(set.getString("bank_addresss"));
                bank.setBank_city(set.getString("bank_city"));
                bank.setBank_state(set.getString("bank_state"));
            }

            

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bank;

    }
    
    public boolean saveBankCampOrganizeDetails(Organizecamp camp)
    {
    boolean f=false;
    
        try {
            String q="insert into organizebloodcamp(blood_camp_name,organizer,camp_address,camp_city,camp_state,camp_date,camp_contact,description) values(?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, camp.getCampName());
            pstmt.setString(2, camp.getOrganizer());
            pstmt.setString(3, camp.getCampAddress());
            pstmt.setString(4, camp.getCampCity());
            pstmt.setString(5, camp.getCampState());
            pstmt.setString(6,  camp.getConductDate());
            pstmt.setString(7, camp.getCampContact());
            pstmt.setString(8, camp.getCampDiscription());
            
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return f;
    }
    
    
    
    public boolean saveBankAvailibilityDetails(BloodAvailability blood)
    {
    boolean f=false;
    
        try {
            String q="insert into bloodavailability(A_positive,A_negative,B_positive,B_negative,O_positive,O_negative,AB_positive,AB_negative) values(?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, blood.getAp());
            pstmt.setString(2, blood.getABn());
            pstmt.setString(3, blood.getBp());
            pstmt.setString(4, blood.getBn());
            pstmt.setString(5, blood.getOp());
            pstmt.setString(6,  blood.getOn());
            pstmt.setString(7, blood.getABp());
            pstmt.setString(8, blood.getABn());
            
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return f;
    }
    
    
    public List<Organizecamp> getAllBloodCampOrganization()
    {
        List<Organizecamp>camp=new ArrayList<>();
        
        try {
            
            String q="select * from organizebloodcamp order by oid desc";
            
            PreparedStatement pstmt = this.con.prepareStatement(q);
            ResultSet set = pstmt.executeQuery();
            
            while(set.next())
            {
            
            String name=set.getString("blood_camp_name");
            String organizer=set.getString("organizer");
            String addrerss=set.getString("camp_address");
            String city=set.getString("camp_city");
            String state=set.getString("camp_state");
            String date=set.getString("camp_date");
            String contact=set.getString("camp_contact");
            String description=set.getString("description");
            
            Organizecamp o=new Organizecamp(name, organizer, addrerss, city, state, date, contact, description);
            
            camp.add(o);
            
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    
        return camp;
    }
    
    
    
    public List<Organizecamp> getAllBloodCampOrganizationByCity(String city)
    {
        List<Organizecamp>camp=null;
        
        try {
            
            String q="select * from organizebloodcamp where camp_city=?";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, city);
            ResultSet set=pstmt.executeQuery();
            camp=new ArrayList<>();
            while(set.next())
            {
            
            String name=set.getString("blood_camp_name");
            String organizer=set.getString("organizer");
            String addrerss=set.getString("camp_address");
            String ccity=set.getString("camp_city");
            String state=set.getString("camp_state");
            String date=set.getString("camp_date");
            String contact=set.getString("camp_contact");
            String description=set.getString("description");
            
            Organizecamp o=new Organizecamp(name, organizer, addrerss, ccity, state, date, contact, description);
            
            camp.add(o);
            
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    
        return camp;
    }
    
    
    public  List<BloodBank> getBloodBankByCity(String cityF)
    {
        
         List<BloodBank> lst=null;
        try {
            String q="select * from bloodbanks where bank_city=?";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            pstmt.setString(1, cityF);
            
            ResultSet set=pstmt.executeQuery();
            
             lst=new ArrayList<>();
            while(set.next())
            {
            String name=set.getString("bank_name");
            String opening=set.getString("bank_opening");
            String staff=set.getString("nomberofstaff");
            String banktype=set.getString("bank_type");
            String licence=set.getString("bank_licence");
            String licenceNomber=set.getString("licence_nomber");
            String contact=set.getString("bank_contact");
            String email=set.getString("bank_email");
            String password=set.getString("password");
            String address=set.getString("bank_address");
            String city=set.getString("bank_city");
            String state=set.getString("bank_state");
            
            BloodBank bank=new BloodBank(name, opening, staff, banktype, licence, licenceNomber, contact, email, password, address, city, state);
            
            lst.add(bank);
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return lst;
    }
    
    
        public  List<BloodBank> getAllBloodBank()
    {
        
         List<BloodBank> lst=null;
        try {
            String q="select * from bloodbanks order by bid desc";
            
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
            
            
            ResultSet set=pstmt.executeQuery();
            
             lst=new ArrayList<>();
            while(set.next())
            {
            String name=set.getString("bank_name");
            String opening=set.getString("bank_opening");
            String staff=set.getString("nomberofstaff");
            String banktype=set.getString("bank_type");
            String licence=set.getString("bank_licence");
            String licenceNomber=set.getString("licence_nomber");
            String contact=set.getString("bank_contact");
            String email=set.getString("bank_email");
            String password=set.getString("password");
            String address=set.getString("bank_address");
            String city=set.getString("bank_city");
            String state=set.getString("bank_state");
            
            BloodBank bank=new BloodBank(name, opening, staff, banktype, licence, licenceNomber, contact, email, password, address, city, state);
            
            lst.add(bank);
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return lst;
    }
    
}








