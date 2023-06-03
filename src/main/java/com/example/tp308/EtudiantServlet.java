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
        String data = request.getParameter("data");
        String[] mots = data.split(" ");
        Etudiant etudiant=new Etudiant();
        etudiant.setNom("essola");
        etudiant.setPrenom("julien");
        etudiant.setMatricule("20z2233");
        etudiant.setAge(20);
  

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print("{\"status\":200,\"message\":\"Code QR validé avec succès\",\"data\":" + etudiant + "}");
        out.flush();
    }
}