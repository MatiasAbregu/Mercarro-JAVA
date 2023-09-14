<%-- 
    Author: Matias Abregú
--%>

<%@page import="clasesJava.RecibirDatosYEnviarDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>

    <body>

        <% RecibirDatosYEnviarDatos EliminarDatos = new RecibirDatosYEnviarDatos();

            if (session.getAttribute("GuardarDatos") != null) {
                if (EliminarDatos != null) {
                    session.invalidate();
                    EliminarDatos.setRecibirNombreUsuario(null);
                    EliminarDatos.setAguaConGas(0);
                    EliminarDatos.setAguaSinGas(0);
                    EliminarDatos.setCerveza(0);
                    EliminarDatos.setWhisky(0);
                    EliminarDatos.setCheetos(0);
                    EliminarDatos.setCocaCola(0);
                    EliminarDatos.setDulceDeLeche(0);
                    EliminarDatos.setHarina(0);
                    EliminarDatos.setLecheDescremada(0);
                    EliminarDatos.setLecheEntera(0);
                    EliminarDatos.setOreos(0);
                    EliminarDatos.setPanHamburguesa(0);
                    EliminarDatos.setPanPancho(0);
                    EliminarDatos.setPapasPehuamar(0);
                    EliminarDatos.setPaty(0);
                    EliminarDatos.setQuesoCremoso(0);
                    EliminarDatos.setSalchichas(0);
                    EliminarDatos.setSprite(0);
                    EliminarDatos.setTallarines(0);
                    EliminarDatos.setTirabuzon(0);
                    EliminarDatos.setTortitasBlack(0);
                    EliminarDatos.setVainilla(0);
                    EliminarDatos.setSugus(0);
                    EliminarDatos.setDolca(0);
                    EliminarDatos.setFerrero(0);
                    
                    response.sendRedirect("/Mercarro/Login.html");
                }
            }

        %>

    </body>

</html>
