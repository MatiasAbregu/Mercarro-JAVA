/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import clasesJava.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Matias
 */
@WebServlet(name = "ProductosRegistrados", urlPatterns = {"/ProductosRegistrados"})
public class ProductosRegistrados extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductosRegistrados</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductosRegistrados at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RecibirDatosYEnviarDatos EnviarDatos = new RecibirDatosYEnviarDatos();
        String ProductoRecibido = request.getParameter("Producto");

        switch (ProductoRecibido) {
            case "AguaConGas":
                EnviarDatos.setAguaConGas(EnviarDatos.getAguaConGas() + 1);
                break;
            case "AguaSinGas":
                EnviarDatos.setAguaSinGas(EnviarDatos.getAguaSinGas() + 1);
                break;
            case "Cheetos":
                EnviarDatos.setCheetos(EnviarDatos.getCheetos() + 1);
                break;
            case "Cerveza":
                EnviarDatos.setCerveza(EnviarDatos.getCerveza() + 1);
                break;
            case "Whisky":
                EnviarDatos.setWhisky(EnviarDatos.getWhisky() + 1);
                break;
            case "CocaCola":
                EnviarDatos.setCocaCola(EnviarDatos.getCocaCola() + 1);
                break;
            case "Sprite":
                EnviarDatos.setSprite(EnviarDatos.getSprite() + 1);
                break;
            case "PapasPehuamar":
                EnviarDatos.setPapasPehuamar(EnviarDatos.getPapasPehuamar() + 1);
                break;
            case "Paty":
                EnviarDatos.setPaty(EnviarDatos.getPaty() + 1);
                break;
            case "Salchichas":
                EnviarDatos.setSalchichas(EnviarDatos.getSalchichas() + 1);
                break;
            case "QuesoCremoso":
                EnviarDatos.setQuesoCremoso(EnviarDatos.getQuesoCremoso() + 1);
                break;
            case "LecheEntera":
                EnviarDatos.setLecheEntera(EnviarDatos.getLecheEntera() + 1);
                break;
            case "LecheDescremada":
                EnviarDatos.setLecheDescremada(EnviarDatos.getLecheDescremada() + 1);
                break;
            case "PanHamburguesa":
                EnviarDatos.setPanHamburguesa(EnviarDatos.getPanHamburguesa() + 1);
                break;
            case "PanPancho":
                EnviarDatos.setPanPancho(EnviarDatos.getPanPancho() + 1);
                break;
            case "Harina":
                EnviarDatos.setHarina(EnviarDatos.getHarina() + 1);
                break;
            case "Tallarines":
                EnviarDatos.setTallarines(EnviarDatos.getTallarines() + 1);
                break;
            case "Tirabuzon":
                EnviarDatos.setTirabuzon(EnviarDatos.getTirabuzon() + 1);
                break;
            case "Vainilla":
                EnviarDatos.setVainilla(EnviarDatos.getVainilla() + 1);
                break;
            case "DulceDeLeche":
                EnviarDatos.setDulceDeLeche(EnviarDatos.getDulceDeLeche() + 1);
                break;
            case "TortitasBlack":
                EnviarDatos.setTortitasBlack(EnviarDatos.getTortitasBlack() + 1);
                break;
            case "Oreos":
                EnviarDatos.setOreos(EnviarDatos.getOreos() + 1);
                break;
            case "Sugus":
                EnviarDatos.setSugus(EnviarDatos.getSugus() + 1);
                break;
            case "Dolca":
                EnviarDatos.setDolca(EnviarDatos.getDolca() + 1);
                break;
            case "Ferrero":
                EnviarDatos.setFerrero(EnviarDatos.getFerrero() + 1);
                break;
        }

        response.sendRedirect("/Mercarro/Inicio-Mercarro.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
