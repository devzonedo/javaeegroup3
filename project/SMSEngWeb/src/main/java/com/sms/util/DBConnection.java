/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sms.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author devzo
 */
public class DBConnection {

    
    public Connection getConnection() {
        String host = "jdbc:mysql://localhost:3306/ee_sms_eng";
        String username = "root";
        String password = "123";
        
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(host, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("========DB Connected=========");
        return conn;
    }
    
    
    
    
    
}
