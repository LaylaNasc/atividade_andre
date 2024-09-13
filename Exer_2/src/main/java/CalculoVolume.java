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
@WebServlet(name = "CalcularVolumeOleo", urlPatterns = {"/CalcularVolumeOleo"})
public class CalculoVolume extends HttpServlet {


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final double pi = 3.14159;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String raioParam = request.getParameter("raio");
            String alturaParam = request.getParameter("altura");

            if (raioParam == null || alturaParam == null || raioParam.trim().isEmpty() || alturaParam.trim().isEmpty()) {
                out.println("<html><body><h1>Erro: Os parâmetros 'raio' e 'altura' são obrigatórios.</h1></body></html>");
                return;
            }

            try {
                double raio = Double.parseDouble(raioParam);
                double altura = Double.parseDouble(alturaParam);

                double volume = pi * Math.pow(raio, 2) * altura;
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet CalcularVolumeOleo</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<p>Raio: " + raio + " unidades</p>");
                out.println("<p>Altura: " + altura + " unidades</p>");
                out.println("<p>Volume: " + volume + " unidades cúbicas</p>");
                out.println("</body>");
                out.println("</html>");
            } catch (NumberFormatException e) {
                out.println("<html><body><h1>Erro: 'raio' e 'altura' devem ser números válidos.</h1></body></html>");
            }
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
        return "Servlet que calcula o volume de uma lata de óleo";
    }
}