package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionDB {
    static final String DB_URL = "jdbc:mysql://localhost:3306/tp308";
    static final String USER = "root";
    static final String PASS = "";

    public static Connection getConnection() throws SQLException {
        // Enregistrement du pilote JDBC

        // Ouverture de la connexion
        System.out.println("Connexion à la base de données...");
        return DriverManager.getConnection(DB_URL, USER, PASS);
    }
}
