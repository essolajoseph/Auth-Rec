package com.example.tp308;

import com.model.Banquier;
import com.model.Payement;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "BanquierServlet", value = "/BanquierServlet")
public class BanquierServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String email=request.getParameter("email");
     String password=request.getParameter("password");
        Payement payement=new Payement();
        Banquier banquier= new Banquier();
        if(banquier.verif(email,password)){
            request.setAttribute("payements",payement.countPayments());
            request.setAttribute("somme",payement.getTotalPayments());
            request.setAttribute("banquier",banquier.getBanquier(email,password));
            RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
            dispatcher.forward(request, response);
        }

    }
}
