package com.example.tp308;

import com.model.Etudiant;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ListStudentServlet", value = "/ListStudentServlet")
public class ListStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Etudiant students=new Etudiant();
        request.setAttribute("students", students.getAllEtudiants());
        // Rediriger vers la page JSP pour afficher la liste d'étudiants
        request.getRequestDispatcher("table.jsp").forward(request, response);
        System.out.println("ok ooooooooooooooooooooooo");
    }
}
