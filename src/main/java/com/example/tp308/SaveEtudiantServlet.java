package com.example.tp308;

import com.model.ConnexionDB;
import com.model.Etudiant;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;

@WebServlet(name = "SaveEtudiantServlet", value = "/SaveEtudiantServlet")
public class SaveEtudiantServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Etudiant etudiant = new Etudiant();
        etudiant.setNom(request.getParameter("nom"));
        etudiant.setPrenom(request.getParameter("prenom"));
        etudiant.setMatricule(request.getParameter("matricule"));
        etudiant.setFiliere(request.getParameter("filiere"));
        etudiant.setNiveau(request.getParameter("niveau"));
        etudiant.setDate_naissance(request.getParameter("date_naissance"));
         ConnexionDB connexionDB=new ConnexionDB();
        try (Connection conn = connexionDB.getConnection()) {
            String selectQuery = "SELECT COUNT(*) FROM etudiants WHERE matricule = ? ";
            PreparedStatement selectStatement = conn.prepareStatement(selectQuery);
            selectStatement.setString(1, etudiant.getMatricule()); // Remplacez "DUPONT" par le nom de l'étudiant
            ResultSet resultSet = selectStatement.executeQuery();
            resultSet.next();
            int count = resultSet.getInt(1);
            if (count > 0) {
                System.out.println("L'étudiant existe déjà dans la base de données !");
            } else {

                String query = "INSERT INTO etudiants (nom, prenom, date_naissance,matricule,niveau,filiere) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement statement = conn.prepareStatement(query);
                statement.setString(1, etudiant.getNom()); // Remplacez "DUPONT" par le nom de l'étudiant
                statement.setString(2, etudiant.getPrenom()); // Remplacez "Jean" par le prénom de l'étudiant
                statement.setString(3, etudiant.getDate_naissance());
                statement.setString(4,etudiant.getMatricule());
                statement.setString(5, etudiant.getNiveau());
                statement.setString(6,etudiant.getFiliere());
                int rowsInserted = statement.executeUpdate();
                if (rowsInserted > 0) {
                    System.out.println("L'étudiant a été ajouté avec succès !");
                }
            }
        } catch (SQLException ex) {
            // Gestion des erreurs de connexion
            ex.printStackTrace();
        }

    }
    }

