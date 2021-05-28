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
public class BloodAvailability {
    
    private int aid;
    private String Ap;
    private String An;
    private String Bp;
    private String Bn;
    private String Op;
    private String On;
    private String ABp;
    private String ABn;

    public BloodAvailability() {
    }

    public BloodAvailability(int aid, String Ap, String An, String Bp, String Bn, String Op, String On, String ABp, String ABn) {
        this.aid = aid;
        this.Ap = Ap;
        this.An = An;
        this.Bp = Bp;
        this.Bn = Bn;
        this.Op = Op;
        this.On = On;
        this.ABp = ABp;
        this.ABn = ABn;
    }

    public BloodAvailability(String Ap, String An, String Bp, String Bn, String Op, String On, String ABp, String ABn) {
        this.Ap = Ap;
        this.An = An;
        this.Bp = Bp;
        this.Bn = Bn;
        this.Op = Op;
        this.On = On;
        this.ABp = ABp;
        this.ABn = ABn;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAp() {
        return Ap;
    }

    public void setAp(String Ap) {
        this.Ap = Ap;
    }

    public String getAn() {
        return An;
    }

    public void setAn(String An) {
        this.An = An;
    }

    public String getBp() {
        return Bp;
    }

    public void setBp(String Bp) {
        this.Bp = Bp;
    }

    public String getBn() {
        return Bn;
    }

    public void setBn(String Bn) {
        this.Bn = Bn;
    }

    public String getOp() {
        return Op;
    }

    public void setOp(String Op) {
        this.Op = Op;
    }

    public String getOn() {
        return On;
    }

    public void setOn(String On) {
        this.On = On;
    }

    public String getABp() {
        return ABp;
    }

    public void setABp(String ABp) {
        this.ABp = ABp;
    }

    public String getABn() {
        return ABn;
    }

    public void setABn(String ABn) {
        this.ABn = ABn;
    }
    
    
    
    
    
    
}
