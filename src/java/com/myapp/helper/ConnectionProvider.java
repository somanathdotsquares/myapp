/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myapp.helper;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Admin
 */
public class ConnectionProvider {

    private static Connection connection;

    public static Connection getConnection() {

        try {
            if (connection == null) {

                //load driver class
                Class.forName("com.mysql.jdbc.Driver");

                //create connection
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/myapp", "root", "Somanath@123");
           
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;

    }
}
