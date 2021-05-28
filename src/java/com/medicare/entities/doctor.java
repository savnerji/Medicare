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
public class doctor {
    
    private int did;
    private String docName;
    private String docDegree;
    private String docDob;
    private String docSpecialist;
    private String docCategory;
    private String docClinicName;
    private String clinicAddress;
    private String clinicCity;
    private String clinicState;
    private String experienceYear;
    private String avgPatient;
    private String docEmail;
    private String docContact;
    private String docPassword;
    private String docAadhar;
    private String docPic;

    public doctor() {
    }

    public doctor(int did, String docName, String docDegree, String docDob, String docSpecialist, String docCategory, String docClinicName, String clinicAddress, String clinicCity, String clinicState, String experienceYear, String avgPatient, String docEmail, String docContact, String docPassword, String docAadhar, String docPic) {
        this.did = did;
        this.docName = docName;
        this.docDegree = docDegree;
        this.docDob = docDob;
        this.docSpecialist = docSpecialist;
        this.docCategory = docCategory;
        this.docClinicName = docClinicName;
        this.clinicAddress = clinicAddress;
        this.clinicCity = clinicCity;
        this.clinicState = clinicState;
        this.experienceYear = experienceYear;
        this.avgPatient = avgPatient;
        this.docEmail = docEmail;
        this.docContact = docContact;
        this.docPassword = docPassword;
        this.docAadhar = docAadhar;
        this.docPic = docPic;
    }

    public doctor(String docName, String docDegree, String docDob, String docSpecialist, String docCategory, String docClinicName, String clinicAddress, String clinicCity, String clinicState, String experienceYear, String avgPatient, String docEmail, String docContact, String docPassword, String docAadhar, String docPic) {
        this.docName = docName;
        this.docDegree = docDegree;
        this.docDob = docDob;
        this.docSpecialist = docSpecialist;
        this.docCategory = docCategory;
        this.docClinicName = docClinicName;
        this.clinicAddress = clinicAddress;
        this.clinicCity = clinicCity;
        this.clinicState = clinicState;
        this.experienceYear = experienceYear;
        this.avgPatient = avgPatient;
        this.docEmail = docEmail;
        this.docContact = docContact;
        this.docPassword = docPassword;
        this.docAadhar = docAadhar;
        this.docPic = docPic;
    }

    
    
    public doctor(String docName, String docDegree, String docDob, String docSpecialist, String docCategory, String docClinicName, String clinicAddress, String clinicCity, String clinicState, String experienceYear, String avgPatient, String docEmail, String docContact ) {
        this.docName = docName;
        this.docDegree = docDegree;
        this.docDob = docDob;
        this.docSpecialist = docSpecialist;
        this.docCategory = docCategory;
        this.docClinicName = docClinicName;
        this.clinicAddress = clinicAddress;
        this.clinicCity = clinicCity;
        this.clinicState = clinicState;
        this.experienceYear = experienceYear;
        this.avgPatient = avgPatient;
        this.docEmail = docEmail;
        this.docContact = docContact;
      
    }
    
    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getDocDegree() {
        return docDegree;
    }

    public void setDocDegree(String docDegree) {
        this.docDegree = docDegree;
    }

    public String getDocDob() {
        return docDob;
    }

    public void setDocDob(String docDob) {
        this.docDob = docDob;
    }

    public String getDocSpecialist() {
        return docSpecialist;
    }

    public void setDocSpecialist(String docSpecialist) {
        this.docSpecialist = docSpecialist;
    }

    public String getDocCategory() {
        return docCategory;
    }

    public void setDocCategory(String docCategory) {
        this.docCategory = docCategory;
    }

    public String getDocClinicName() {
        return docClinicName;
    }

    public void setDocClinicName(String docClinicName) {
        this.docClinicName = docClinicName;
    }

    public String getClinicAddress() {
        return clinicAddress;
    }

    public void setClinicAddress(String clinicAddress) {
        this.clinicAddress = clinicAddress;
    }

    public String getClinicCity() {
        return clinicCity;
    }

    public void setClinicCity(String clinicCity) {
        this.clinicCity = clinicCity;
    }

    public String getClinicState() {
        return clinicState;
    }

    public void setClinicState(String clinicState) {
        this.clinicState = clinicState;
    }

    public String getExperienceYear() {
        return experienceYear;
    }

    public void setExperienceYear(String experienceYear) {
        this.experienceYear = experienceYear;
    }

    public String getAvgPatient() {
        return avgPatient;
    }

    public void setAvgPatient(String avgPatient) {
        this.avgPatient = avgPatient;
    }

    public String getDocEmail() {
        return docEmail;
    }

    public void setDocEmail(String docEmail) {
        this.docEmail = docEmail;
    }

    public String getDocContact() {
        return docContact;
    }

    public void setDocContact(String docContact) {
        this.docContact = docContact;
    }

    public String getDocPassword() {
        return docPassword;
    }

    public void setDocPassword(String docPassword) {
        this.docPassword = docPassword;
    }

    public String getDocAadhar() {
        return docAadhar;
    }

    public void setDocAadhar(String docAadhar) {
        this.docAadhar = docAadhar;
    }

    public String getDocPic() {
        return docPic;
    }

    public void setDocPic(String docPic) {
        this.docPic = docPic;
    }
    
    
    
    
    
    
}
