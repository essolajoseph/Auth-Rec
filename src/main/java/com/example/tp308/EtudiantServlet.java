package com.example.tp308;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.ConnexionDB;
import com.model.Etudiant;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class EtudiantServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String age = request.getParameter("age");
        String matricule= request.getParameter("matricule");

        Etudiant etudiant = new Etudiant();
        List<Etudiant>etudiants =new ArrayList<>();

        etudiant.setNom(nom);
        etudiant.setPrenom(prenom);
        etudiant.setAge(Integer.parseInt(age));
        etudiant.setMatricule(matricule);
        ConnexionDB cb=new ConnexionDB();
        Statement statement= null;
        ResultSet resultat=null;
        try {
            statement = cb.getConnexion().createStatement();
            resultat=statement.executeQuery("select nom,prenom,age,matricule from etudiants ");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        int statut = 0;
        try {
            statut = statement.executeUpdate( "INSERT INTO etudiants (nom,prenom ,age ,matricule ) VALUES ('"+etudiant.getNom()+"','"+etudiant.getPrenom()+"', '"+etudiant.getAge()+"','"+etudiant.getMatricule()+"');" );
            while (resultat.next()){
                etudiant=new Etudiant();
                etudiant.setNom(resultat.getString("nom"));
                etudiant.setPrenom(resultat.getString("prenom"));
                etudiant.setAge(Integer.parseInt(resultat.getString("age")));
                etudiant.setMatricule(resultat.getString("matricule"));
                etudiants.add(etudiant);
            }

            resultat.close();
            statement.close();
            cb.closeConnexion();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        request.setAttribute("etudiants", etudiants);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
        dispatcher.forward(request, response);
    }
}