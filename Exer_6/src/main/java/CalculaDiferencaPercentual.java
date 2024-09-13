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
@WebServlet(name = "CalculaDiferencaPercentualServlet", urlPatterns = {"/CalculaDiferencaPercentual"})
public class CalculaDiferencaPercentual extends HttpServlet {


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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String valor1Str = request.getParameter("valor1");
        String valor2Str = request.getParameter("valor2");

        double valor1 = Double.parseDouble(valor1Str);
        double valor2 = Double.parseDouble(valor2Str);

        if (valor1 > valor2) {
            double diferenca = valor1 - valor2;
            double percentualDiferenca = (diferenca / valor1) * 100;

            try (PrintWriter out = response.getWriter()) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Resultado da Diferença Percentual</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Diferença percentual entre " + valor1 + " e " + valor2 + " é: " + percentualDiferenca + "%</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        } else {
            try (PrintWriter out = response.getWriter()) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Erro</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Erro: O primeiro valor deve ser maior que o segundo.</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        }
    }
}