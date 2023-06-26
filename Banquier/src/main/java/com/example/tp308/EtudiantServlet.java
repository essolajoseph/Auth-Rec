package com.example.tp308;

import com.model.Etudiant;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import com.fasterxml.jackson.databind.ObjectMapper;


@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class EtudiantServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String data = request.getParameter("data");
        String[] mots = data.split(";");
        Etudiant etudiant=new Etudiant();
        etudiant.setNom(mots[1]);
        etudiant.setPrenom(mots[2]);
        etudiant.setMatricule(mots[3]);
        etudiant.setNiveau(mots[4]);
        etudiant.setFiliere(mots[5]);
        etudiant.setDate_naissance(mots[6]);

        ObjectMapper objectMapper = new ObjectMapper();

// Transformez l'objet Etudiant en chaîne JSON
        String etudiantJson = objectMapper.writeValueAsString(etudiant);

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print("{\"status\":200,\"message\":\"Code QR validé avec succès\",\"data\":" +  etudiantJson + "}");
        out.flush();
    }
}