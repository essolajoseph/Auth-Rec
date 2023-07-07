package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Etudiant {
    private String nom;
    private String prenom;
    private String date_naissance;
    private String matricule;
    private String niveau;
    private String filiere;
    private String phone;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Etudiant() {}

    public Etudiant(String nom, String prenom) {
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }


    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getDate_naissance() {
        return date_naissance;
    }

    public void setDate_naissance(String date_naissance) {
        this.date_naissance = date_naissance;
    }

    public String getNiveau() {
        return niveau;
    }

    public void setNiveau(String niveau) {
        this.niveau = niveau;
    }

    public String getFiliere() {
        return filiere;
    }

    public void setFiliere(String filiere) {
        this.filiere = filiere;
    }

    public String getMatricule() {
        return matricule;
    }

    public  void save(){
        ConnexionDB connexionDB=new ConnexionDB();
        try (Connection conn = connexionDB.getConnection()) {
            String selectQuery = "SELECT COUNT(*) FROM etudiants WHERE matricule = ? ";
            PreparedStatement selectStatement = conn.prepareStatement(selectQuery);
            selectStatement.setString(1, this.getMatricule()); // Remplacez "DUPONT" par le nom de l'étudiant
            ResultSet resultSet = selectStatement.executeQuery();
            resultSet.next();
            int count = resultSet.getInt(1);
            if (count > 0) {
                System.out.println("L'étudiant existe déjà dans la base de données !");
            } else {

                String query = "INSERT INTO etudiants (nom, prenom, date_naissance,matricule,niveau,filiere) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement statement = conn.prepareStatement(query);
                statement.setString(1, this.getNom()); // Remplacez "DUPONT" par le nom de l'étudiant
                statement.setString(2, this.getPrenom()); // Remplacez "Jean" par le prénom de l'étudiant
                statement.setString(3, this.getDate_naissance());
                statement.setString(4, this.getMatricule());
                statement.setString(5, this.getNiveau());
                statement.setString(6, this.getFiliere());
                int rowsInserted = statement.executeUpdate();
                if (rowsInserted > 0) {
                    System.out.println("L'étudiant a été ajouté avec succès !");
                    conn.close();
                }
            }
        } catch (SQLException ex) {
            // Gestion des erreurs de connexion
            ex.printStackTrace();
        }
    }

    public  List<Etudiant> getAllEtudiants() {
        List<Etudiant> etudiants = new ArrayList<>();
        ConnexionDB connexionDB = new ConnexionDB();

        try (Connection conn = connexionDB.getConnection()) {
            String query = "SELECT * FROM etudiants";
            PreparedStatement statement = conn.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Etudiant etudiant = new Etudiant();
                etudiant.setNom(resultSet.getString("nom"));
                etudiant.setPrenom(resultSet.getString("prenom"));
                etudiant.setDate_naissance(resultSet.getString("date_naissance"));
                etudiant.setMatricule(resultSet.getString("matricule"));
                etudiant.setNiveau(resultSet.getString("niveau"));
                etudiant.setFiliere(resultSet.getString("filiere"));
                etudiants.add(etudiant);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return etudiants;
    }
}


