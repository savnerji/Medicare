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
public class surveydata {
 
    private int sid;
    private String name;
    private String age;
    private String aadharcard;
    private String disease1;
    private String disease2;
    private String disease3;
    private String disease4;
    private String  medicine1;
    private String  medicine2;
    private String  medicine3;
    private String  reportname;
    private String  bloodgroup;

    public surveydata() {
    }

    public surveydata(int sid, String name, String age, String aadharcard, String disease1, String disease2, String disease3, String disease4, String medicine1, String medicine2, String medicine3, String reportname, String bloodgroup) {
        this.sid = sid;
        this.name = name;
        this.age = age;
        this.aadharcard = aadharcard;
        this.disease1 = disease1;
        this.disease2 = disease2;
        this.disease3 = disease3;
        this.disease4 = disease4;
        this.medicine1 = medicine1;
        this.medicine2 = medicine2;
        this.medicine3 = medicine3;
        this.reportname = reportname;
        this.bloodgroup = bloodgroup;
    }

    

       public surveydata(String name, String age, String aadharcard, String disease1, String disease2, String disease3, String disease4,String reportname, String medicine1, String medicine2, String medicine3,  String bloodgroup) {
        this.name = name;
        this.age = age;
        this.aadharcard = aadharcard;
        this.disease1 = disease1;
        this.disease2 = disease2;
        this.disease3 = disease3;
        this.disease4 = disease4;
         this.reportname = reportname;
        this.medicine1 = medicine1;
        this.medicine2 = medicine2;
        this.medicine3 = medicine3;
       
        this.bloodgroup = bloodgroup;
    }
    
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAadharcard() {
        return aadharcard;
    }

    public void setAadharcard(String aadharcard) {
        this.aadharcard = aadharcard;
    }

    public String getDisease1() {
        return disease1;
    }

    public void setDisease1(String disease1) {
        this.disease1 = disease1;
    }

    public String getDisease2() {
        return disease2;
    }

    public void setDisease2(String disease2) {
        this.disease2 = disease2;
    }

    public String getDisease3() {
        return disease3;
    }

    public void setDisease3(String disease3) {
        this.disease3 = disease3;
    }

    public String getDisease4() {
        return disease4;
    }

    public void setDisease4(String disease4) {
        this.disease4 = disease4;
    }

    public String getMedicine1() {
        return medicine1;
    }

    public void setMedicine1(String medicine1) {
        this.medicine1 = medicine1;
    }

    public String getMedicine2() {
        return medicine2;
    }

    public void setMedicine2(String medicine2) {
        this.medicine2 = medicine2;
    }

    public String getMedicine3() {
        return medicine3;
    }

    public void setMedicine3(String medicine3) {
        this.medicine3 = medicine3;
    }

    public String getReportname() {
        return reportname;
    }

    public void setReportname(String reportname) {
        this.reportname = reportname;
    }

    public String getBloodgroup() {
        return bloodgroup;
    }

    public void setBloodgroup(String bloodgroup) {
        this.bloodgroup = bloodgroup;
    }
    
    
    
    
    
}
