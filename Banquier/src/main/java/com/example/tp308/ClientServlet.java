package com.example.tp308;

import com.model.Client;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "ClientServlet", value = "/ClientServlet")
public class ClientServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupération des données du formulaire
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String numero=request.getParameter("numero");
         List<Client> clients =new ArrayList<>();
        // Stockage des données dans un objet JavaBean
        Client client = new Client();
        client.setNumero(numero);
        client.setNom(nom);
        clients.add(client);
        // Stockage de l'objet JavaBean dans l'objet request
        request.setAttribute("clients", clients);
//        request.setAttribute("prenom",prenom);
//        request.setAttribute("numero",numero);


        RequestDispatcher dispatcher = request.getRequestDispatcher("listClient.jsp");
        dispatcher.forward(request, response);
    }
}
