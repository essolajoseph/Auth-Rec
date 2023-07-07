package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Payement {
    private String numeroT;
    private String datejour;
    private double montant;
    private String agence;

    public String getAgence() {
        return agence;
    }

    public void setAgence(String agence) {
        this.agence = agence;
    }

    public Payement() {
    }

    public String getNumeroT() {
        return numeroT;
    }

    public void setNumeroT(String numeroT) {
        this.numeroT = numeroT;
    }

    public String getDatejour() {
        return datejour;
    }

    public void setDatejour(String datejour) {
        this.datejour = datejour;
    }

    public double getMontant() {
        return montant;
    }

    public void setMontant(double montant) {
        this.montant = montant;
    }


    public void save( String matriculeE, String banquier){
        ConnexionDB connexionDB=new ConnexionDB();
        try (Connection conn = connexionDB.getConnection()) {

                String query = "INSERT INTO payement (numeroT, matriculeE, Id_agence,id_banquier,date,montant) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement statement = conn.prepareStatement(query);
                statement.setString(1, this.getNumeroT()); // Remplacez "DUPONT" par le nom de l'étudiant
                statement.setString(2, matriculeE); // Remplacez "Jean" par le prénom de l'étudiant
                statement.setString(3, this.getAgence());
                statement.setString(4,banquier);
                statement.setString(5,this.getDatejour());
                statement.setDouble(6,this.getMontant());
                int rowsInserted = statement.executeUpdate();
                if (rowsInserted > 0) {
                    System.out.println("Payement effectué!");
                    conn.close();
                }
        } catch (SQLException ex) {
            // Gestion des erreurs de connexion
            ex.printStackTrace();
        }
    }
    public int countPayments() {
        ConnexionDB connexionDB = new ConnexionDB();
        int count = 0;

        try (Connection conn = connexionDB.getConnection()) {
            String selectQuery = "SELECT COUNT(*) FROM payement";
            PreparedStatement selectStatement = conn.prepareStatement(selectQuery);
            ResultSet resultSet = selectStatement.executeQuery();

            if (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return count;
    }

    public double getTotalPayments() {
        ConnexionDB connexionDB = new ConnexionDB();
        double total = 0;

        try (Connection conn = connexionDB.getConnection()) {
            String selectQuery = "SELECT SUM(montant) FROM payement";
            PreparedStatement selectStatement = conn.prepareStatement(selectQuery);
            ResultSet resultSet = selectStatement.executeQuery();

            if (resultSet.next()) {
                total = resultSet.getDouble(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return total;
    }


}
