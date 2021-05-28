/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.entities;

/**
 *
 * @author rahul
 */
public class BloodBank {
    private int bid;
   private String bank_name;
   private String bank_opening;
   private String nomberofstaff;
   private String bank_type;
   private String bank_licenSe;
   private String licenseNomber;
   private String bank_contact;
   private String bank_email;
   private String password;
   private String bank_address;
    private String bank_city;
    private String bank_state;

    public BloodBank() {
    }

    public BloodBank(int bid, String bank_name, String bank_opening, String nomberofstaff, String bank_type, String bank_licenSe, String licenseNomber, String bank_contact, String bank_email, String password, String bank_address, String bank_city, String bank_state) {
        this.bid = bid;
        this.bank_name = bank_name;
        this.bank_opening = bank_opening;
        this.nomberofstaff = nomberofstaff;
        this.bank_type = bank_type;
        this.bank_licenSe = bank_licenSe;
        this.licenseNomber = licenseNomber;
        this.bank_contact = bank_contact;
        this.bank_email = bank_email;
        this.password = password;
        this.bank_address = bank_address;
        this.bank_city = bank_city;
        this.bank_state = bank_state;
    }

    public BloodBank(String bank_name, String bank_opening, String nomberofstaff, String bank_type, String bank_licenSe, String licenseNomber, String bank_contact, String bank_email, String password, String bank_address, String bank_city, String bank_state) {
        this.bank_name = bank_name;
        this.bank_opening = bank_opening;
        this.nomberofstaff = nomberofstaff;
        this.bank_type = bank_type;
        this.bank_licenSe = bank_licenSe;
        this.licenseNomber = licenseNomber;
        this.bank_contact = bank_contact;
        this.bank_email = bank_email;
        this.password = password;
        this.bank_address = bank_address;
        this.bank_city = bank_city;
        this.bank_state = bank_state;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBank_name() {
        return bank_name;
    }

    public void setBank_name(String bank_name) {
        this.bank_name = bank_name;
    }

    public String getBank_opening() {
        return bank_opening;
    }

    public void setBank_opening(String bank_opening) {
        this.bank_opening = bank_opening;
    }

    public String getNomberofstaff() {
        return nomberofstaff;
    }

    public void setNomberofstaff(String nomberofstaff) {
        this.nomberofstaff = nomberofstaff;
    }

    public String getBank_type() {
        return bank_type;
    }

    public void setBank_type(String bank_type) {
        this.bank_type = bank_type;
    }

    public String getBank_licenSe() {
        return bank_licenSe;
    }

    public void setBank_licenSe(String bank_licenSe) {
        this.bank_licenSe = bank_licenSe;
    }

    public String getLicenseNomber() {
        return licenseNomber;
    }

    public void setLicenseNomber(String licenseNomber) {
        this.licenseNomber = licenseNomber;
    }

    public String getBank_contact() {
        return bank_contact;
    }

    public void setBank_contact(String bank_contact) {
        this.bank_contact = bank_contact;
    }

    public String getBank_email() {
        return bank_email;
    }

    public void setBank_email(String bank_email) {
        this.bank_email = bank_email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBank_address() {
        return bank_address;
    }

    public void setBank_address(String bank_address) {
        this.bank_address = bank_address;
    }

    public String getBank_city() {
        return bank_city;
    }

    public void setBank_city(String bank_city) {
        this.bank_city = bank_city;
    }

    public String getBank_state() {
        return bank_state;
    }

    public void setBank_state(String bank_state) {
        this.bank_state = bank_state;
    }
   
    
    
    
    
}
