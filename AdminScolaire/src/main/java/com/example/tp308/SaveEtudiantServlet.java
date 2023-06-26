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
        etudiant.save();
    }
    }

