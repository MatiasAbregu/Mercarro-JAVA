<%-- 
    Author: Matias Abregú
--%>

<%@page import="java.util.ArrayList, clasesJava.RecibirDatosYEnviarDatos"%>
<!DOCTYPE html>

<html>

    <head>
        <meta charset=UTF-8>
        <title>¡Compra Exitosa! | Mercarro</title>
        <link rel="shortcut icon" href="img/Mercarrologo.ico"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CompraExitosa.css"/> 
    </head>

    <body>

        <section>
            <h1>¡Compra Exitosa!</h1>
            <p>Su pedido va en camino. ¡Gracias por confiar en nosotros!</p>

            <%
                RecibirDatosYEnviarDatos ReciboDatos = new RecibirDatosYEnviarDatos();
                int cantAguaConGas = ReciboDatos.getAguaConGas();
                int cantAguaSinGas = ReciboDatos.getAguaSinGas();
                int cantCerveza = ReciboDatos.getCerveza();
                int cantCola = ReciboDatos.getCocaCola();
                int cantSprite = ReciboDatos.getSprite();
                int cantCheetos = ReciboDatos.getCheetos();
                int cantPapas = ReciboDatos.getPapasPehuamar();
                int cantPaty = ReciboDatos.getPaty();
                int cantSalchichas = ReciboDatos.getSalchichas();
                int cantQueso = ReciboDatos.getQuesoCremoso();
                int cantLecheEnt = ReciboDatos.getLecheEntera();
                int cantLecheDes = ReciboDatos.getLecheDescremada();
                int cantPanes = ReciboDatos.getPanHamburguesa();
                int cantHarina = ReciboDatos.getHarina();
                int cantTallarines = ReciboDatos.getTallarines();
                int cantTirabuzon = ReciboDatos.getTirabuzon();
                int cantVainilla = ReciboDatos.getVainilla();
                int cantDulLeche = ReciboDatos.getDulceDeLeche();
                int cantTortita = ReciboDatos.getTortitasBlack();
                int cantOreo = ReciboDatos.getOreos();
                int cantWhisky = ReciboDatos.getWhisky();
                int cantPanPancho = ReciboDatos.getPanPancho();
                int cantSugus = ReciboDatos.getSugus();
                int cantDolca = ReciboDatos.getDolca();
                int cantFerrero = ReciboDatos.getFerrero();
                String producto;

                if (cantAguaConGas >= 1) {

                    producto = "AguaConGas";
                    Cookie AguaConGas = new Cookie("AguaConGas", producto);
                    AguaConGas.setMaxAge(86400);
                    response.addCookie(AguaConGas);

                }
                if (cantAguaSinGas >= 1) {

                    producto = "AguaSinGas";
                    Cookie AguaSinGas = new Cookie("AguaSinGas", producto);
                    AguaSinGas.setMaxAge(86400);
                    response.addCookie(AguaSinGas);

                }
                if (cantCerveza >= 1) {

                    producto = "Cerveza";
                    Cookie Cerveza = new Cookie("Cerveza", producto);
                    Cerveza.setMaxAge(86400);
                    response.addCookie(Cerveza);

                }
                if (cantCola >= 1) {

                    producto = "Cola";
                    Cookie Cola = new Cookie("Cola", producto);
                    Cola.setMaxAge(86400);
                    response.addCookie(Cola);

                }
                if (cantSprite >= 1) {

                    producto = "Sprite";
                    Cookie Sprite = new Cookie("Sprite", producto);
                    Sprite.setMaxAge(86400);
                    response.addCookie(Sprite);

                }
                if (cantCheetos >= 1) {

                    producto = "Cheetos";
                    Cookie Cheetos = new Cookie("Cheetos", producto);
                    Cheetos.setMaxAge(86400);
                    response.addCookie(Cheetos);

                }
                if (cantPapas >= 1) {

                    producto = "Papas";
                    Cookie Papas = new Cookie("Papas", producto);
                    Papas.setMaxAge(86400);
                    response.addCookie(Papas);

                }
                if (cantPaty >= 1) {

                    producto = "Paty";
                    Cookie Paty = new Cookie("Paty", producto);
                    Paty.setMaxAge(86400);
                    response.addCookie(Paty);

                }
                if (cantSalchichas >= 1) {

                    producto = "Salchichas";
                    Cookie Salchichas = new Cookie("Salchichas", producto);
                    Salchichas.setMaxAge(86400);
                    response.addCookie(Salchichas);

                }
                if (cantQueso >= 1) {

                    producto = "Queso";
                    Cookie Queso = new Cookie("Queso", producto);
                    Queso.setMaxAge(86400);
                    response.addCookie(Queso);

                }
                if (cantLecheEnt >= 1) {

                    producto = "LecheEntera";
                    Cookie LecheEntera = new Cookie("LecheEntera", producto);
                    LecheEntera.setMaxAge(86400);
                    response.addCookie(LecheEntera);

                }
                if (cantLecheDes >= 1) {

                    producto = "LecheDescremada";
                    Cookie LecheDescremada = new Cookie("LecheDescremada", producto);
                    LecheDescremada.setMaxAge(86400);
                    response.addCookie(LecheDescremada);

                }
                if (cantPanes >= 1) {

                    producto = "Panes";
                    Cookie Panes = new Cookie("Panes", producto);
                    Panes.setMaxAge(86400);
                    response.addCookie(Panes);

                }
                if (cantHarina >= 1) {

                    producto = "Harina";
                    Cookie Harina = new Cookie("Harina", producto);
                    Harina.setMaxAge(86400);
                    response.addCookie(Harina);

                }
                if (cantTallarines >= 1) {

                    producto = "Tallarines";
                    Cookie Tallarines = new Cookie("Tallarines", producto);
                    Tallarines.setMaxAge(86400);
                    response.addCookie(Tallarines);

                }
                if (cantTirabuzon >= 1) {

                    producto = "Tirabuzon";
                    Cookie Tirabuzon = new Cookie("Tirabuzon", producto);
                    Tirabuzon.setMaxAge(86400);
                    response.addCookie(Tirabuzon);

                }
                if (cantVainilla >= 1) {

                    producto = "Vainilla";
                    Cookie Vainilla = new Cookie("Vainilla", producto);
                    Vainilla.setMaxAge(86400);
                    response.addCookie(Vainilla);

                }
                if (cantDulLeche >= 1) {

                    producto = "DulceDeLeche";
                    Cookie DulceDeLeche = new Cookie("DulceDeLeche", producto);
                    DulceDeLeche.setMaxAge(86400);
                    response.addCookie(DulceDeLeche);

                }
                if (cantTortita >= 1) {

                    producto = "Tortitas";
                    Cookie Tortitas = new Cookie("Tortitas", producto);
                    Tortitas.setMaxAge(86400);
                    response.addCookie(Tortitas);

                }
                if (cantOreo >= 1) {

                    producto = "Oreos";
                    Cookie Oreos = new Cookie("Oreos", producto);
                    Oreos.setMaxAge(86400);
                    response.addCookie(Oreos);

                }
                if (cantWhisky >= 1) {

                    producto = "Whisky";
                    Cookie Whisky = new Cookie("Whisky", producto);
                    Whisky.setMaxAge(86400);
                    response.addCookie(Whisky);

                }
                if (cantPanPancho >= 1) {

                    producto = "PanPancho";
                    Cookie PanPancho = new Cookie("PanPancho", producto);
                    PanPancho.setMaxAge(86400);
                    response.addCookie(PanPancho);

                }
                if (cantSugus >= 1) {

                    producto = "Sugus";
                    Cookie Sugus = new Cookie("Sugus", producto);
                    Sugus.setMaxAge(86400);
                    response.addCookie(Sugus);

                }
                if (cantDolca >= 1) {

                    producto = "Dolca";
                    Cookie Dolca = new Cookie("Dolca", producto);
                    Dolca.setMaxAge(86400);
                    response.addCookie(Dolca);

                }
                if (cantFerrero >= 1) {

                    producto = "Ferrero";
                    Cookie Ferrero = new Cookie("Ferrero", producto);
                    Ferrero.setMaxAge(86400);
                    response.addCookie(Ferrero);

                }
            %>

            <form action="LimpiarYCerrar.jsp">
                <button type="submit">Salir</button>    
            </form>
        </section>

    </body>

</html>