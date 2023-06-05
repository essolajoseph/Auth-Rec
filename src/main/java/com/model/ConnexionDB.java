package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.lang.Class;

public class ConnexionDB {
    private String DB_URL = "jdbc:mysql://localhost:3306/tp308";
    private  String USER = "root";
    private  String PASS= "";

    public ConnexionDB() {
    }

    public Connection getConnection()  {
        try{
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Driver loaded successfully!");
            } catch (ClassNotFoundException e) {
                System.out.println("Error loading driver: " + e.getMessage());
            }
            System.out.println("ok connecte a la base de donnees");
        return DriverManager.getConnection(DB_URL, USER, PASS);}
        catch (SQLException e) {
            System.out.println("non connecte a la base de donnees");
            return null;
        }
    }
}
