<%-- 
    Author: Matias Abregú
    En este proyecto se utilizo XAMPP (MySQL) y Apache TOMCAT 9.0
--%>

<%@page import="clasesJava.*, Servlets.*, java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Mercarro - Inicio | Tu supermecado de confianza</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="Estilo.css"/> 
        <link rel="shortcut icon" href="img/Mercarrologo.ico">
        <meta charset="UTF-8">
    </head>

    <body>

        <%
            String nombreUsuario = (String) session.getAttribute("GuardarDatos");
            RecibirDatosYEnviarDatos RecibirDatos = new RecibirDatosYEnviarDatos();

            if (nombreUsuario == null) {
                nombreUsuario = RecibirDatos.getRecibirNombreUsuario();
                session.setAttribute("GuardarDatos", nombreUsuario);
            }

            String AguaConGas = null, AguaSinGas = null, Cerveza = null, Cola = null, Sprite = null, Cheetos = null, Papas = null, Paty = null, Salchichas = null,
                    Queso = null, LecheEntera = null, LecheDescremada = null, Panes = null, Harina = null, Tallarines = null, Tirabuzon = null, Vainilla = null,
                    DulceDeLeche = null, Tortitas = null, Oreos = null, Whisky = null, PanPancho = null, Sugus = null, Dolca = null, Ferrero = null;

            Cookie[] todasLasGalletitas = request.getCookies();

            if (todasLasGalletitas != null) {
                for (Cookie temporal : todasLasGalletitas) {

                    if ("AguaConGas".equals(temporal.getName())) {
                        AguaConGas = temporal.getValue();
                    }
                    if ("AguaSinGas".equals(temporal.getName())) {
                        AguaSinGas = temporal.getValue();
                    }
                    if ("Cerveza".equals(temporal.getName())) {
                        Cerveza = temporal.getValue();
                    }
                    if ("Cola".equals(temporal.getName())) {
                        Cola = temporal.getValue();
                    }
                    if ("Sprite".equals(temporal.getName())) {
                        Sprite = temporal.getValue();
                    }
                    if ("Cheetos".equals(temporal.getName())) {
                        Cheetos = temporal.getValue();
                    }
                    if ("Papas".equals(temporal.getName())) {
                        Papas = temporal.getValue();
                    }
                    if ("Paty".equals(temporal.getName())) {
                        Paty = temporal.getValue();
                    }
                    if ("Salchichas".equals(temporal.getName())) {
                        Salchichas = temporal.getValue();
                    }
                    if ("Queso".equals(temporal.getName())) {
                        Queso = temporal.getValue();
                    }
                    if ("LecheEntera".equals(temporal.getName())) {
                        LecheEntera = temporal.getValue();
                    }
                    if ("LecheDescremada".equals(temporal.getName())) {
                        LecheDescremada = temporal.getValue();
                    }
                    if ("Panes".equals(temporal.getName())) {
                        Panes = temporal.getValue();
                    }
                    if ("Harina".equals(temporal.getName())) {
                        Harina = temporal.getValue();
                    }
                    if ("Tallarines".equals(temporal.getName())) {
                        Tallarines = temporal.getValue();
                    }
                    if ("Tirabuzon".equals(temporal.getName())) {
                        Tirabuzon = temporal.getValue();
                    }
                    if ("Vainilla".equals(temporal.getName())) {
                        Vainilla = temporal.getValue();
                    }
                    if ("DulceDeLeche".equals(temporal.getName())) {
                        DulceDeLeche = temporal.getValue();
                    }
                    if ("Tortitas".equals(temporal.getName())) {
                        Tortitas = temporal.getValue();
                    }
                    if ("Oreos".equals(temporal.getName())) {
                        Oreos = temporal.getValue();
                    }
                    if ("Whisky".equals(temporal.getName())) {
                        Whisky = temporal.getValue();
                    }
                    if ("PanPancho".equals(temporal.getName())) {
                        PanPancho = temporal.getValue();
                    }
                    if ("Sugus".equals(temporal.getName())) {
                        Sugus = temporal.getValue();
                    }
                    if ("Dolca".equals(temporal.getName())) {
                        Dolca = temporal.getValue();
                    }
                    if ("Ferrero".equals(temporal.getName())) {
                        Ferrero = temporal.getValue();
                    }
                }
            }

            pageContext.setAttribute("datos1", AguaConGas);
            pageContext.setAttribute("datos2", AguaSinGas);
            pageContext.setAttribute("datos3", Cerveza);
            pageContext.setAttribute("datos4", Cola);
            pageContext.setAttribute("datos5", Sprite);
            pageContext.setAttribute("datos6", Cheetos);
            pageContext.setAttribute("datos7", Papas);
            pageContext.setAttribute("datos8", Paty);
            pageContext.setAttribute("datos9", Salchichas);
            pageContext.setAttribute("datos10", Queso);
            pageContext.setAttribute("datos11", LecheEntera);
            pageContext.setAttribute("datos12", LecheDescremada);
            pageContext.setAttribute("datos13", Panes);
            pageContext.setAttribute("datos14", Harina);
            pageContext.setAttribute("datos15", Tallarines);
            pageContext.setAttribute("datos16", Tirabuzon);
            pageContext.setAttribute("datos17", Vainilla);
            pageContext.setAttribute("datos18", DulceDeLeche);
            pageContext.setAttribute("datos19", Tortitas);
            pageContext.setAttribute("datos20", Oreos);
            pageContext.setAttribute("datos21", Whisky);
            pageContext.setAttribute("datos22", PanPancho);
            pageContext.setAttribute("datos23", Sugus);
            pageContext.setAttribute("datos24", Dolca);
            pageContext.setAttribute("datos25", Ferrero);
        %>

        <header>
            <a href="Inicio-Mercarro.jsp"><img id="logo" src="img/Mercarrologo.png"/></a>

            <form action="Busqueda.jsp" method="post">
                <input type="text" placeholder="¡Bienvenido! ¿Qué estas buscando?" name="busqueda" required/>
                <button id="lupa" type="submit"><img class="imagenL" src="img/Lupa.png"/></button>
            </form>

            <form action="Carrito.jsp" method="post">
                <button id="carrito" type="submit"> <img class="imagenC" src="img/Carrito.png"/> </button>
            </form>

            <p>Bienvenido: <% out.print(session.getAttribute("GuardarDatos"));%> </p>

            <form action="LimpiarYCerrar.jsp" method="get">
                <button id="Cerrar" type="submit">Cerrar Sesión</button>
            </form> 
        </header>

        <section>

            <article>

                <h1>Productos Comprados la ultima vez: </h1>

                <c:if test="${datos1 == null and datos2 == null and datos3 == null and datos4 == null and datos5 == null and datos6 == null and datos7 == null and 
                              datos8 == null and datos9 == null and datos10 == null and datos11 == null and datos12 == null and datos13 == null and datos14 == null and datos15 == null and 
                              datos16 == null and datos17 == null and datos18 == null and datos19 == null and datos20 == null and datos21 == null and datos22 == null and datos23== null 
                              and datos24 == null and datos25 == null}">
                      <p id="Texto">¿Tu primera vez comprando aquí? Prueba comprar algo y en tu próxima visita te recomendaremos productos.</p>      
                </c:if>

                <c:if test="${datos1 != null}">
                    <article class="Productos">
                        <img src="img/AGUA-500ML-GAS.png"/>
                        <p>Agua Villavicencio Con Gas 500ML</p>
                        <button type="submit" name="Producto" value="AguaConGas">Agregar</button>                        
                    </article>
                </c:if>   

                <c:if test="${datos2 != null}">
                    <article class="Productos">
                        <img src="img/Agua-Sin-Gas-500ml.png"/>
                        <p>Agua Villavicencio Sin Gas 500ML</p>
                        <button type="submit" name="Producto" value="AguaSinGas">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos3 != null}">
                    <article class="Productos">
                        <img src="img/Cerveza-Corona.png"/>
                        <p>Cerveza Corona 500ML</p>
                        <button type="submit" name="Producto" value="Cerveza">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos21 != null}">
                    <article class="Productos">
                        <img src="img/Whisky-750ml.png"/>
                        <p>Whisky Jack Daniel's 750ML</p>
                        <button type="submit" name="Producto" value="Whisky">Agregar</button>
                    </article> 
                </c:if>   

                <c:if test="${datos4 != null}">
                    <article class="Productos">
                        <img src="img/Coca-Cola-1,5L.png"/>
                        <p>Gaseosa Coca Cola 1.5L</p>
                        <button type="submit" name="Producto" value="CocaCola">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos5 != null}">
                    <article class="Productos">
                        <img src="img/Sprite-1,5L.png"/>
                        <p>Gaseosa Sprite 1.5L</p>
                        <button type="submit" name="Producto" value="Sprite">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos6 != null}">
                    <article class="Productos">
                        <img src="img/Cheetos.png"/>
                        <p>Cheetos sabor Queso 151g</p>
                        <button type="submit" name="Producto" value="Cheetos">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos7 != null}">
                    <article class="Productos">
                        <img src="img/PapaPehuamar.png"/>
                        <p>Papas Pehuamar Acanaladas 151g</p>
                        <button type="submit" name="Producto" value="PapasPehuamar">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos8 != null}">
                    <article class="Productos">
                        <img src="img/paty-clasico.png">
                        <p>Hamburguesas Paty x4 Clasicas</p>
                        <button type="submit" name="Producto" value="Paty">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos9 != null}">
                    <article class="Productos">
                        <img src="img/Paladini.png"/>
                        <p>Salchichas Paladini x6</p>
                        <button type="submit" name="Producto" value="Salchichas">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos10 != null}">
                    <article class="Productos">
                        <img src="img/Cremoso.png"/>
                        <p>Queso Cremoso La Paulina 1kg</p>
                        <button type="submit" name="Producto" value="QuesoCremoso">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos11 != null}">
                    <article class="Productos">
                        <img src="img/Leche-Entera-Sancor.png"/>
                        <p>Leche Entera Sancor 1L</p>
                        <button type="submit" name="Producto" value="LecheEntera">Agregar</button>
                    </article>
                </c:if>  

                <c:if test="${datos12 != null}">
                    <article class="Productos">
                        <img src="img/Leche-Descremada.png"/>
                        <p>Leche Descremada Sancor 1L</p>
                        <button type="submit" name="Producto" value="LecheDescremada">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos13 != null}">
                    <article class="Productos">
                        <img src="img/Pan-Bimbo-Hamburguesa.png"/>
                        <p>Pan Hamburguesa Bimbo x4 Unidades</p>
                        <button type="submit" name="Producto" value="PanHamburguesa">Agregar</button>
                    </article>
                </c:if>  

                <c:if test="${datos22 != null}">
                    <article class="Productos">
                        <img src="img/Pan-Bimbo-Pancho.png"/>
                        <p>Pan Pancho Bimbo x6 Unidades</p>
                        <button type="submit" name="Producto" value="PanPancho">Agregar</button>
                    </article> 
                </c:if>  

                <c:if test="${datos14 != null}">
                    <article class="Productos">
                        <img src="img/Harina-Pureza-Ultrarefinada.png"/>
                        <p>Harina Pureza Ultrarefinada 1kg</p>
                        <button type="submit" name="Producto" value="Harina">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos15 != null}">
                    <article class="Productos">
                        <img src="img/Fideos-Matarazo.png"/>
                        <p>Fideos Matarazzo Tallarin 500g</p>
                        <button type="submit" name="Producto" value="Tallarines">Agregar</button>
                    </article>
                </c:if>  

                <c:if test="${datos16 != null}">
                    <article class="Productos">
                        <img src="img/Fideos-Matarazo-Tirabuzon.png"/>
                        <p>Fideos Matarazzo Tirabuzón 500g</p>
                        <button type="submit" name="Producto" value="Tirabuzon">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos17 != null}">
                    <article class="Productos">
                        <img src="img/Vainilla.png"/>
                        <p>Formis sabor Vainilla 102g</p>
                        <button type="submit" name="Producto" value="Vainilla">Agregar</button>
                    </article>
                </c:if>  

                <c:if test="${datos18 != null}">
                    <article class="Productos">
                        <img src="img/Dulce-Leche.png"/>
                        <p>Formis sabor Dulce de Leche 102g</p>
                        <button type="submit" name="Producto" value="DulceDeLeche">Agregar</button>
                    </article>
                </c:if>   

                <c:if test="${datos19 != null}">
                    <article class="Productos">
                        <img src="img/Tortitas-Chocolate.png"/>
                        <p>Tortitas Black 125g</p>
                        <button type="submit" name="Producto" value="TortitasBlack">Agregar</button>
                    </article>  
                </c:if>  

                <c:if test="${datos20 != null}">
                    <article class="Productos">
                        <img src="img/Galletas-Oreo-118g.png"/>
                        <p>Galletas Oreo 118g</p>
                        <button type="submit" name="Producto" value="Oreos">Agregar</button>
                    </article> 
                </c:if> 

                <c:if test="${datos23 != null}">
                    <article class="Productos">
                        <img src="img/Sugus-50g.png"/>
                        <p>Confites Sugus 50g</p>
                        <button type="submit" name="Producto" value="Sugus">Agregar</button>
                    </article> 
                </c:if>   

                <c:if test="${datos24 != null}">
                    <article class="Productos">
                        <img src="img/Bananita-Dolca-x16.png"/>
                        <p>Bananita Dolca x16 Unidades</p>
                        <button type="submit" name="Producto" value="Dolca">Agregar</button>
                    </article> 
                </c:if>   

                <c:if test="${datos25 != null}">
                    <article class="Productos">
                        <img src="img/Ferrero-12u.png"/>
                        <p>Ferrero Rocher x12 Unidades</p>
                        <button type="submit" name="Producto" value="Ferrero">Agregar</button>
                    </article> 
                </c:if>   

            </article>

            <article>               
                <h1>Todos los productos: </h1>

                <section>

                    <form action="ProductosRegistrados" method="get">

                        <article class="Productos">
                            <img src="img/AGUA-500ML-GAS.png"/>
                            <p>Agua Villavicencio Con Gas 500ML</p>
                            <button type="submit" name="Producto" value="AguaConGas">Agregar</button>                        
                        </article>


                        <article class="Productos">
                            <img src="img/Agua-Sin-Gas-500ml.png"/>
                            <p>Agua Villavicencio Sin Gas 500ML</p>
                            <button type="submit" name="Producto" value="AguaSinGas">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Cerveza-Corona.png"/>
                            <p>Cerveza Corona 500ML</p>
                            <button type="submit" name="Producto" value="Cerveza">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Whisky-750ml.png"/>
                            <p>Whisky Jack Daniel's 750ML</p>
                            <button type="submit" name="Producto" value="Whisky">Agregar</button>
                        </article> 

                        <article class="Productos">
                            <img src="img/Coca-Cola-1,5L.png"/>
                            <p>Gaseosa Coca Cola 1.5L</p>
                            <button type="submit" name="Producto" value="CocaCola">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Sprite-1,5L.png"/>
                            <p>Gaseosa Sprite 1.5L</p>
                            <button type="submit" name="Producto" value="Sprite">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Cheetos.png"/>
                            <p>Cheetos sabor Queso 151g</p>
                            <button type="submit" name="Producto" value="Cheetos">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/PapaPehuamar.png"/>
                            <p>Papas Pehuamar Acanaladas 151g</p>
                            <button type="submit" name="Producto" value="PapasPehuamar">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/paty-clasico.png">
                            <p>Hamburguesas Paty x4 Clasicas</p>
                            <button type="submit" name="Producto" value="Paty">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Paladini.png"/>
                            <p>Salchichas Paladini x6</p>
                            <button type="submit" name="Producto" value="Salchichas">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Cremoso.png"/>
                            <p>Queso Cremoso La Paulina 1kg</p>
                            <button type="submit" name="Producto" value="QuesoCremoso">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Leche-Entera-Sancor.png"/>
                            <p>Leche Entera Sancor 1L</p>
                            <button type="submit" name="Producto" value="LecheEntera">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Leche-Descremada.png"/>
                            <p>Leche Descremada Sancor 1L</p>
                            <button type="submit" name="Producto" value="LecheDescremada">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Pan-Bimbo-Hamburguesa.png"/>
                            <p>Pan Hamburguesa Bimbo x4 Unidades</p>
                            <button type="submit" name="Producto" value="PanHamburguesa">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Pan-Bimbo-Pancho.png"/>
                            <p>Pan Pancho Bimbo x6 Unidades</p>
                            <button type="submit" name="Producto" value="PanPancho">Agregar</button>
                        </article> 

                        <article class="Productos">
                            <img src="img/Harina-Pureza-Ultrarefinada.png"/>
                            <p>Harina Pureza Ultrarefinada 1kg</p>
                            <button type="submit" name="Producto" value="Harina">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Fideos-Matarazo.png"/>
                            <p>Fideos Matarazzo Tallarin 500g</p>
                            <button type="submit" name="Producto" value="Tallarines">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Fideos-Matarazo-Tirabuzon.png"/>
                            <p>Fideos Matarazzo Tirabuzón 500g</p>
                            <button type="submit" name="Producto" value="Tirabuzon">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Vainilla.png"/>
                            <p>Formis sabor Vainilla 102g</p>
                            <button type="submit" name="Producto" value="Vainilla">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Dulce-Leche.png"/>
                            <p>Formis sabor Dulce de Leche 102g</p>
                            <button type="submit" name="Producto" value="DulceDeLeche">Agregar</button>
                        </article>

                        <article class="Productos">
                            <img src="img/Tortitas-Chocolate.png"/>
                            <p>Tortitas Black 125g</p>
                            <button type="submit" name="Producto" value="TortitasBlack">Agregar</button>
                        </article>   

                        <article class="Productos">
                            <img src="img/Galletas-Oreo-118g.png"/>
                            <p>Galletas Oreo 118g</p>
                            <button type="submit" name="Producto" value="Oreos">Agregar</button>
                        </article> 

                        <article class="Productos">
                            <img src="img/Sugus-50g.png"/>
                            <p>Confites Sugus 50g</p>
                            <button type="submit" name="Producto" value="Sugus">Agregar</button>
                        </article> 

                        <article class="Productos">
                            <img src="img/Bananita-Dolca-x16.png"/>
                            <p>Bananita Dolca x16 Unidades</p>
                            <button type="submit" name="Producto" value="Dolca">Agregar</button>
                        </article> 

                        <article class="Productos">
                            <img src="img/Ferrero-12u.png"/>
                            <p>Ferrero Rocher x12 Unidades</p>
                            <button type="submit" name="Producto" value="Ferrero">Agregar</button>
                        </article> 

                    </form>

                </section>

            </article>

        </section>

        <footer>
            <br>
            <p>Derechos Reservados a Matias Abregú ®</p>    
            <br>
            <a target="blank" href="https://api.whatsapp.com/send?phone=3512753590">Contactame aqui</a>
        </footer>       

    </body>

</html>