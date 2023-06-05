package com.example.tp308;

import com.model.ConnexionDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {
        try {

            Connection  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tp308","root","");
            if(conn!=null){
                System.out.println("connecte");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
