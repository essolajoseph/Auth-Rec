package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Banquier {
    private String nom;
    private String prenom;
    private String email;
    private String password;

    public Banquier() {
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean verif(){
        ConnexionDB connexionDB=new ConnexionDB();
        boolean resp=false;
        try (Connection conn = connexionDB.getConnection()) {
            String selectQuery = "SELECT COUNT(*) FROM banquier WHERE email = ? ";
            PreparedStatement selectStatement = conn.prepareStatement(selectQuery);
            selectStatement.setString(1, this.getEmail()); // Remplacez "DUPONT" par le nom de l'étudiant
            ResultSet resultSet = selectStatement.executeQuery();
            resultSet.next();
            int count = resultSet.getInt(1);
            if (count > 0) {
                System.out.println("Les informations du banquier sont correctes !");
                resp=true;
                return resp;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resp;
    }
}
