/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.exer_13;

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
@WebServlet("/converterMoeda")
public class Conversao extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        double reais = 0;
        try {
            reais = Double.parseDouble(request.getParameter("reais"));
        } catch (NumberFormatException e) {
            out.println("<p>Erro: Insira um valor válido para a quantia em reais.</p>");
            return;
        }
        
        String moeda = request.getParameter("moeda");

        double taxa = 0;
        String nomeMoeda = "";

        switch (moeda) {
            case "F":
                taxa = 5.62; 
                nomeMoeda = "Franco Suíço";
                break;
            case "L":
                taxa = 7.12; 
                nomeMoeda = "Libra Esterlina";
                break;
            case "D":
                taxa = 4.98; 
                nomeMoeda = "Dólar";
                break;
            case "M":
                taxa = 4.95; 
                nomeMoeda = "Marco Alemão";
                break;
            default:
                out.println("<p>Erro: Moeda não reconhecida. Escolha entre F, L, D, M.</p>");
                return;
        }

        double valorConvertido = reais / taxa;

        out.println("<html>");
        out.println("<head><title>Resultado</title></head>");
        out.println("<body>");
        out.println("<h2>Valor em Reais: R$" + String.format("%.2f", reais) + "</h2>");
        out.println("<h2>Valor em " + nomeMoeda + ": " + String.format("%.2f", valorConvertido) + "</h2>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}