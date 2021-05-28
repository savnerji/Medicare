/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medicare.helper;
 import java.sql.*;
/**
 *
 * @author rahul
 */
public class ConnectionProvider {
    

        private static Connection con=null;
    
    
    public static Connection getConnection()
    {
        if(con==null)
        {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                 String url="jdbc:mysql://localhost:3306/medicare";
                 
                 String database="root";
                 String password="";
                 
                 con=DriverManager.getConnection(url,database,password);
                
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        
        }
    return con;
    }
}
