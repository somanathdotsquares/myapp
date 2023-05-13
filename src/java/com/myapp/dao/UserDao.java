/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myapp.dao;

import com.myapp.entities.User;
import java.sql.*;

/**
 *
 * @author Somanath Gaikwad
 */
//used for intract db
public class UserDao {
    
    private Connection connection;
//it helpus to create object

    public UserDao(Connection connection) {
        this.connection = connection;
    }
//insert user to db 

    public boolean saveUser(User user) {
        //here user will get data and send to db
        boolean f = false;
        try {
            //create query

            String query = "insert into users(name,email,password,gender,about) values(?,?,?,?,?)";

            //preprare statement
            PreparedStatement pstmt = this.connection.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            pstmt.setString(1, user.getName());

            //execute query - exeuteUpdate when sendind data into db , exwcuteQuery when getting data from db
            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    //get user by email and password
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            
            String query = "select * from users where email=? and password=?";
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet resultset = pstmt.executeQuery();
            if (resultset.next()) {
                user = new User();
                //data from db
                String name = resultset.getString("name");
//                set to user object
                user.setName(name);
                
                user.setId(resultset.getInt("id"));
                user.setEmail(resultset.getString("email"));
                user.setPassword(resultset.getString("password"));
                user.setGender(resultset.getString("gender"));
                user.setAbout(resultset.getString("about"));
                user.setRegdate(resultset.getTimestamp("regdate"));
                user.setProfile(resultset.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
        
    }
}
