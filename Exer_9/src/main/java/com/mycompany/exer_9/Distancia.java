package com.mycompany.exer_9;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author layla
 */
@WebServlet(name = "Distancia", urlPatterns = {"/Distancia"})
public class Distancia extends HttpServlet {


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        double x1 = Double.parseDouble(request.getParameter("x1"));
        double y1 = Double.parseDouble(request.getParameter("y1"));
        double x2 = Double.parseDouble(request.getParameter("x2"));
        double y2 = Double.parseDouble(request.getParameter("y2"));
        
        double distancia = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));

        try (PrintWriter out = response.getWriter()) {
            out.println("<html><body>");
            out.println("<h1>Resultado da Distância:</h1>");
            out.println("<p>A distância entre os pontos (" + x1 + ", " + y1 + ") e (" + x2 + ", " + y2 + ") é: " + distancia + "</p>");
            out.println("</body></html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet que calcula a distância entre dois pontos no plano cartesiano.";
    }
}

