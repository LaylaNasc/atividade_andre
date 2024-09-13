package com.mycompany.exer_11;

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
@WebServlet(name = "Triangulo", urlPatterns = {"/Triangulo"})
public class Triangulo extends HttpServlet {


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   private boolean formaTriangulo(double a, double b, double c) {
        return (a + b > c) && (a + c > b) && (b + c > a);
    }

    private String tipoTriangulo(double a, double b, double c) {
        if (a == b && b == c) {
            return "Equilátero";
        } else if (a == b || b == c || a == c) {
            return "Isósceles";
        } else {
            return "Escaleno";
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double a = Double.parseDouble(request.getParameter("a"));
        double b = Double.parseDouble(request.getParameter("b"));
        double c = Double.parseDouble(request.getParameter("c"));

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Verificação de Triângulo</title>");            
            out.println("</head>");
            out.println("<body>");
            
            if (formaTriangulo(a, b, c)) {
                String tipo = tipoTriangulo(a, b, c);
                out.println("<h2>As medidas formam um triângulo " + tipo + ".</h2>");
            } else {
                out.println("<h2>As medidas não formam um triângulo.</h2>");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet que verifica se três medidas formam um triângulo e determina o tipo.";
    }
 }