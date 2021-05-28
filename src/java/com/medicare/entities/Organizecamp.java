/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.entities;

import java.security.Timestamp;
import java.util.Date;

/**
 *
 * @author rahul
 */
public class Organizecamp {
    
    
    private  int oid;
    private String campName;
    private String organizer;
    private String campAddress;
     private String campCity;
     private String campState;
     private String conductDate;
     private String campContact;  
     private String campDiscription;

    public Organizecamp() {
    }

    public Organizecamp(int oid, String campName, String organizer, String campAddress, String campCity, String campState, String conductDate, String campContact, String campDiscription) {
        this.oid = oid;
        this.campName = campName;
        this.organizer = organizer;
        this.campAddress = campAddress;
        this.campCity = campCity;
        this.campState = campState;
        this.conductDate = conductDate;
        this.campContact = campContact;
        this.campDiscription = campDiscription;
    }

    public Organizecamp(String campName, String organizer, String campAddress, String campCity, String campState, String conductDate, String campContact, String campDiscription) {
        this.campName = campName;
        this.organizer = organizer;
        this.campAddress = campAddress;
        this.campCity = campCity;
        this.campState = campState;
        this.conductDate = conductDate;
        this.campContact = campContact;
        this.campDiscription = campDiscription;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getCampName() {
        return campName;
    }

    public void setCampName(String campName) {
        this.campName = campName;
    }

    public String getOrganizer() {
        return organizer;
    }

    public void setOrganizer(String organizer) {
        this.organizer = organizer;
    }

    public String getCampAddress() {
        return campAddress;
    }

    public void setCampAddress(String campAddress) {
        this.campAddress = campAddress;
    }

    public String getCampCity() {
        return campCity;
    }

    public void setCampCity(String campCity) {
        this.campCity = campCity;
    }

    public String getCampState() {
        return campState;
    }

    public void setCampState(String campState) {
        this.campState = campState;
    }

    public String getConductDate() {
        return conductDate;
    }

    public void setConductDate(String conductDate) {
        this.conductDate = conductDate;
    }

    public String getCampContact() {
        return campContact;
    }

    public void setCampContact(String campContact) {
        this.campContact = campContact;
    }

    public String getCampDiscription() {
        return campDiscription;
    }

    public void setCampDiscription(String campDiscription) {
        this.campDiscription = campDiscription;
    }

    
    
    
     
     
     
        
    
}
