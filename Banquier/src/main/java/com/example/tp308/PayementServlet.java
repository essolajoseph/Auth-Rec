package com.example.tp308;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.zxing.WriterException;
import com.model.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

@WebServlet(name = "PayementServlet", value = "/PayementServlet")
public class PayementServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Etudiant etudiant = new Etudiant();
        etudiant.setNom(request.getParameter("last_name").toUpperCase());
        etudiant.setPrenom(request.getParameter("first_name").toUpperCase());
        etudiant.setMatricule(request.getParameter("matricule").toUpperCase());
        etudiant.setFiliere(request.getParameter("filiere").toUpperCase());
        etudiant.setNiveau(request.getParameter("niveau").toUpperCase());
        etudiant.setDate_naissance(request.getParameter("date"));
        etudiant.setPhone(request.getParameter("phone"));
        Payement payement=new Payement();
        payement.setDatejour(request.getParameter("datejour"));
        payement.setMontant(Double.parseDouble(request.getParameter("montant")));
        payement.setNumeroT(new Transaction(7).getTransactionNumber());
        payement.setAgence(request.getParameter("agence").toUpperCase());
        Banquier banquier=new Banquier();
        banquier.setEmail(request.getParameter("email"));
        banquier.setPassword(request.getParameter("password"));
        banquier.setPrenom(request.getParameter("firstname").toUpperCase());
        banquier.setNom(request.getParameter("lastname").toUpperCase());
        payement.save(etudiant.getMatricule(), banquier.getEmail());
        //**********************************************************************************
        // traitement des informations
        if(banquier.verif(banquier.getEmail(),banquier.getPassword())==true){

            QRCodeGenerator qrCodeGenerator = new QRCodeGenerator();
            InputStream qrCodeInputStream = null;
            try {
                qrCodeInputStream = qrCodeGenerator.createQRImage("00000000000000000000000;"+etudiant.getNom()+";"+etudiant.getPrenom()+";"+etudiant.getMatricule()+";"+etudiant.getNiveau()+";"+etudiant.getFiliere()+";"+etudiant.getDate_naissance()+";"+payement.getMontant());
                System.out.println("00000000000000000000000;"+etudiant.getNom()+";"+etudiant.getPrenom()+";"+etudiant.getMatricule()+";"+etudiant.getNiveau()+";"+etudiant.getFiliere()+";"+etudiant.getDate_naissance()+";"+payement.getMontant());
            } catch (WriterException e) {
                throw new RuntimeException(e);
            }
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = qrCodeInputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
            byte[] qrCodeBytes = outputStream.toByteArray();
            String qrCodeBase64 = Base64.getEncoder().encodeToString(qrCodeBytes);
            request.setAttribute("qrCodeBase64", qrCodeBase64);
            request.setAttribute("etudiant",etudiant);
            request.setAttribute("banquier",banquier);
            request.setAttribute("payement",payement);
            request.getRequestDispatcher("recu.jsp").forward(request, response);
        }
        else{
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }
}
