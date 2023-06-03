package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionDB {
    String url = "jdbc:mysql://localhost:3306/tp308";
    String utilisateur = "root";
    String motDePasse = "";
    Connection connexion = null;

    public Connection getConnexion() {
     try {
         connexion = DriverManager.getConnection( url, utilisateur,motDePasse );
     } catch (SQLException e) {
         throw new RuntimeException(e);
     }
        return connexion;
    }

    public void closeConnexion() throws SQLException {
        if(connexion!=null){
            connexion.close();
        }
    }

    public ConnexionDB(){
    }
}
