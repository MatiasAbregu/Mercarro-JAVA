package Servlets;

import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 * @author Matias Abregú
 */
@WebServlet(urlPatterns = {"/RegistroClaseJava"})
public class RegistroClaseJava extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistroClaseJava</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistroClaseJava at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter pw = response.getWriter();

        String usuario = request.getParameter("usuario");
        String contra = request.getParameter("contra");
        String email = request.getParameter("email");
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");

            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mecarro", "root", "");

            Statement st = cn.createStatement();

            String instruccion = "insert into usuarios values ('" + usuario + "', '" + contra + "', '" + email + "')";

            st.executeUpdate(instruccion);                   

        } catch (SQLException e) {
            System.out.println("Error en la base de datos!");
        } catch (ClassNotFoundException ex) {
            
        }

        pw.println("<html><body>");
        pw.println("<p><b>Registro exitoso!</b></p>");
        pw.println("<br><br>");
        pw.println("<p>Presione aqui para iniciar sesión:</p>");
        pw.println("<a href='Login.html'>Iniciar Sesión</a>");
        pw.println("</html></body>");
        //response.sendRedirect("/Mercarro/Login.html"); Para redireccionar a otra pagina
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
