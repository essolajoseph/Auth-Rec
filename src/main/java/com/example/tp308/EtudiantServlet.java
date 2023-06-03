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
        String qr_code = request.getParameter("data");
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print("{\"status\":200,\"message\":\"Code QR validé avec succès\"}");
        out.flush();
    }
}