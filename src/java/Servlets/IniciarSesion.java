package Servlets;

import clasesJava.RecibirDatosYEnviarDatos;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 * @author Matias Abregú
 */
@WebServlet(name = "IniciarSesion", urlPatterns = {"/IniciarSesion"})
public class IniciarSesion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet IniciarSesion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet IniciarSesion at " + request.getContextPath() + "</h1>");
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
        
        String usuomail = request.getParameter("UsuarioOEmail");
        String contra = request.getParameter("contra");
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mecarro", "root", "");
                    
            PreparedStatement pst = cn.prepareStatement("select * from usuarios where (Usuario=? or Email=?) and Contrasena=?");
            
            pst.setString(1, usuomail);
            pst.setString(2, usuomail);
            pst.setString(3, contra);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.absolute(1)){               
                usuomail = rs.getString(1);
           
                pw.println("<html><body>");
                pw.println("<h1>Ya entro</h1>");
                pw.println("</body></html>");
                
                RecibirDatosYEnviarDatos EnviarDatos = new RecibirDatosYEnviarDatos();
                EnviarDatos.setRecibirNombreUsuario(usuomail);
                response.sendRedirect("/Mercarro/Inicio-Mercarro.jsp"); //Para redigir a otra pagina
                
                /*request.setAttribute("usuario", usuomail);
                request.getRequestDispatcher("/Inicio-Mercarro.jsp").forward(request, response);*/      
                
            } else {
                pw.println("<html><body>");
                pw.println("<h1>Usuario o Contraseña incorrecto por favor vuelva atras y vuelva a intentarlo.</h1>");
                pw.println("</body></html>");
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
