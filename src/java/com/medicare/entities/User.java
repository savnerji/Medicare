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
public class User {
    
    
    private int id;
    private String name;
    private String age;
    private String gender;
    private String dob;
    private String city;
    private String state;
    private String address;
    private String addhar_nomber ;
    private String contact;
    private String email;
    private String picName;
private String password;

    public User() {
    }

    public User(int id, String name, String age, String gender, String dob, String city, String state, String address, String addhar_nomber, String contact, String email, String picName, String password) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.dob = dob;
        this.city = city;
        this.state = state;
        this.address = address;
        this.addhar_nomber = addhar_nomber;
        this.contact = contact;
        this.email = email;
        this.picName = picName;
        this.password = password;
    }

    public User(String name, String age, String gender, String dob, String city, String state, String address, String addhar_nomber, String contact, String email, String picName, String password) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.dob = dob;
        this.city = city;
        this.state = state;
        this.address = address;
        this.addhar_nomber = addhar_nomber;
        this.contact = contact;
        this.email = email;
        this.picName = picName;
        this.password = password;
    }
  




    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddhar_nomber() {
        return addhar_nomber;
    }

    public void setAddhar_nomber(String addhar_nomber) {
        this.addhar_nomber = addhar_nomber;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
    
    
}
