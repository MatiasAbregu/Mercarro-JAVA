<%-- 
    Author     : Matias
--%>

<%@page import="clasesJava.RecibirDatosYEnviarDatos"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

    <head>
        <meta charset=UTF-8>
        <title>Mercarro - Carrito | Productos en el carrito</title>
        <link rel="shortcut icon" href="img/Mercarrologo.ico"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="Carrito.css"/> 
    </head>

    <body>

        <%
            RecibirDatosYEnviarDatos ReciboDatos = new RecibirDatosYEnviarDatos();
            int cantAguaConGas = ReciboDatos.getAguaConGas();
            int cantAguaSinGas = ReciboDatos.getAguaSinGas();
            int cantCerveza = ReciboDatos.getCerveza();
            int cantWhisky = ReciboDatos.getWhisky();
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
            int cantPanPancho = ReciboDatos.getPanPancho();
            int cantHarina = ReciboDatos.getHarina();
            int cantTallarines = ReciboDatos.getTallarines();
            int cantTirabuzon = ReciboDatos.getTirabuzon();
            int cantVainilla = ReciboDatos.getVainilla();
            int cantDulLeche = ReciboDatos.getDulceDeLeche();
            int cantTortita = ReciboDatos.getTortitasBlack();
            int cantOreo = ReciboDatos.getOreos();
            int cantSugus = ReciboDatos.getSugus();
            int cantDolca = ReciboDatos.getDolca();
            int cantFerrero = ReciboDatos.getFerrero();
            pageContext.setAttribute("datos1", cantAguaConGas);
            pageContext.setAttribute("datos2", cantAguaSinGas);
            pageContext.setAttribute("datos3", cantCerveza);
            pageContext.setAttribute("datos4", cantCola);
            pageContext.setAttribute("datos5", cantSprite);
            pageContext.setAttribute("datos6", cantCheetos);
            pageContext.setAttribute("datos7", cantPapas);
            pageContext.setAttribute("datos8", cantPaty);
            pageContext.setAttribute("datos9", cantSalchichas);
            pageContext.setAttribute("datos10", cantQueso);
            pageContext.setAttribute("datos11", cantLecheEnt);
            pageContext.setAttribute("datos12", cantLecheDes);
            pageContext.setAttribute("datos13", cantPanes);
            pageContext.setAttribute("datos14", cantHarina);
            pageContext.setAttribute("datos15", cantTallarines);
            pageContext.setAttribute("datos16", cantTirabuzon);
            pageContext.setAttribute("datos17", cantVainilla);
            pageContext.setAttribute("datos18", cantDulLeche);
            pageContext.setAttribute("datos19", cantTortita);
            pageContext.setAttribute("datos20", cantOreo);
            pageContext.setAttribute("datos21", cantWhisky);
            pageContext.setAttribute("datos22", cantPanPancho);
            pageContext.setAttribute("datos23", cantSugus);
            pageContext.setAttribute("datos24", cantDolca);
            pageContext.setAttribute("datos25", cantFerrero);
        %>

        <header>
            <a href="Inicio-Mercarro.jsp"><img id="logo" src="img/Mercarrologo.png"/></a>

            <h1>Productos agregados en el carrito: </h1>

            <p>Bienvenido: <% out.print(session.getAttribute("GuardarDatos"));%> </p>

            <form action="LimpiarYCerrar.jsp" method="get">
                <button id="Cerrar" type="submit">Cerrar Sesión</button>
            </form> 
        </header>

        <section>

            <c:choose>

                <c:when test="${datos1 >= 1 or datos2 >= 1 or datos3 >= 1 or datos4 >= 1 or datos5 >= 1 or datos6 >= 1 or datos7 >= 1 or datos8 >= 1 or datos9 >= 1 or datos10 >= 1 
                                or datos11 >= 1 or datos12 >= 1 or datos13 >= 1 or datos14 >= 1 or datos15 >= 1 or datos16 >= 1 or datos17 >= 1 or datos18 >= 1 or datos19 >= 1 or datos20 >= 1}">
                        <table>
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre de Producto</th>
                                    <th>Cantidad</th>
                                    <th>Precio</th>                                 
                                <tr>
                            </thead>

                            <tbody>

                                <c:if test="${datos1 >= 1}">
                                    <tr>
                                        <td>1</td>
                                        <td>Agua Villavicencio Con Gas 500ML</td>
                                        <td> <c:out value="${datos1}"></c:out> </td>
                                        <td> <c:out value="${datos1 * 60} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos2 >= 1}">
                                    <tr>
                                        <td>2</td>
                                        <td>Agua Villavicencio Sin Gas 500ML</td>
                                        <td> <c:out value="${datos2}"></c:out> </td>
                                        <td> <c:out value="${datos2 * 40} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos3 >= 1}">
                                    <tr>
                                        <td>3</td>
                                        <td>Cerveza Corona 500ML</td>
                                        <td> <c:out value="${datos3}"></c:out> </td>
                                        <td> <c:out value="${datos3 * 100} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos4 >= 1}">
                                    <tr>
                                        <td>4</td>
                                        <td>Gaseosa Coca Cola 1.5L</td>
                                        <td> <c:out value="${datos4}"></c:out> </td>
                                        <td> <c:out value="${datos4 * 90} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos5 >= 1}">
                                    <tr>
                                        <td>5</td>
                                        <td>Gaseosa Sprite 1.5L</td>
                                        <td> <c:out value="${datos5}"></c:out> </td>
                                        <td> <c:out value="${datos5 * 90} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos6 >= 1}">
                                    <tr>
                                        <td>6</td>
                                        <td>Cheetos sabor Queso 151g</td>
                                        <td> <c:out value="${datos6}"></c:out> </td>
                                        <td> <c:out value="${datos6 * 140} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos7 >= 1}">
                                    <tr>
                                        <td>7</td>
                                        <td>Papas Pehuamar Acanaladas 151g</td>
                                        <td> <c:out value="${datos7}"></c:out> </td>
                                        <td> <c:out value="${datos7 * 140} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos8 >= 1}">
                                    <tr>
                                        <td>8</td>
                                        <td>Hamburguesas Paty x4 Clasicas</td>
                                        <td> <c:out value="${datos8}"></c:out> </td>
                                        <td> <c:out value="${datos8 * 140} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos9 >= 1}">
                                    <tr>
                                        <td>9</td>
                                        <td>Salchichas Paladini x6</td>
                                        <td> <c:out value="${datos9}"></c:out> </td>
                                        <td> <c:out value="${datos9 * 110} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos10 >= 1}">
                                    <tr>
                                        <td>10</td>
                                        <td>Queso Cremoso La Paulina 1kg</td>
                                        <td> <c:out value="${datos10}"></c:out> </td>
                                        <td> <c:out value="${datos10 * 300} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos11 >= 1}">
                                    <tr>
                                        <td>11</td>
                                        <td>Leche Entera Sancor 1L</td>
                                        <td> <c:out value="${datos11}"></c:out> </td>
                                        <td> <c:out value="${datos11 * 150} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos12 >= 1}">
                                    <tr>
                                        <td>12</td>
                                        <td>Leche Descremada Sancor 1L</td>
                                        <td> <c:out value="${datos12}"></c:out> </td>
                                        <td> <c:out value="${datos12 * 180} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos13 >= 1}">
                                    <tr>
                                        <td>13</td>
                                        <td>Pan Hamburguesa Bimbo x4 Unidades</td>
                                        <td> <c:out value="${datos13}"></c:out> </td>
                                        <td> <c:out value="${datos13 * 160} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos14 >= 1}">
                                    <tr>
                                        <td>14</td>
                                        <td>Harina Pureza Ultrarefinada 1kg</td>
                                        <td> <c:out value="${datos14}"></c:out> </td>
                                        <td> <c:out value="${datos14 * 120} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos15 >= 1}">
                                    <tr>
                                        <td>15</td>
                                        <td>Fideos Matarazzo Tallarin 500g</td>
                                        <td> <c:out value="${datos15}"></c:out> </td>
                                        <td> <c:out value="${datos15 * 100} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos16 >= 1}">
                                    <tr>
                                        <td>16</td>
                                        <td>Fideos Matarazzo Tirabuzón 500g</td>
                                        <td> <c:out value="${datos16}"></c:out> </td>
                                        <td> <c:out value="${datos16 * 100} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos17 >= 1}">
                                    <tr>
                                        <td>17</td>
                                        <td>Formis sabor Vainilla 102g</td>
                                        <td> <c:out value="${datos17}"></c:out> </td>
                                        <td> <c:out value="${datos17 * 80} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos18 >= 1}">
                                    <tr>
                                        <td>18</td>
                                        <td>Formis sabor Dulce de Leche 102g</td>
                                        <td> <c:out value="${datos18}"></c:out> </td>
                                        <td> <c:out value="${datos18 * 80} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos19 >= 1}">
                                    <tr>
                                        <td>19</td>
                                        <td>Tortitas Black 125g</td>
                                        <td> <c:out value="${datos19}"></c:out> </td>
                                        <td> <c:out value="${datos19 * 90} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos20 >= 1}">
                                    <tr>
                                        <td>20</td>
                                        <td>Galletas Oreo 118g</td>
                                        <td> <c:out value="${datos20}"></c:out> </td>
                                        <td> <c:out value="${datos20 * 90} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos21 >= 1}">
                                    <tr>
                                        <td>21</td>
                                        <td>Whisky Jack Daniel's 750ML</td>
                                        <td> <c:out value="${datos21}"></c:out> </td>
                                        <td> <c:out value="${datos21 * 300} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos22 >= 1}">
                                    <tr>
                                        <td>22</td>
                                        <td>Pan Pancho Bimbo x6 Unidades</td>
                                        <td> <c:out value="${datos22}"></c:out> </td>
                                        <td> <c:out value="${datos22 * 140} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos23 >= 1}">
                                    <tr>
                                        <td>23</td>
                                        <td>Confites Sugus 50g</td>
                                        <td> <c:out value="${datos23}"></c:out> </td>
                                        <td> <c:out value="${datos23 * 80} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                                <c:if test="${datos24 >= 1}">
                                    <tr>
                                        <td>24</td>
                                        <td>Bananita Dolca x16 Unidades</td>
                                        <td> <c:out value="${datos24}"></c:out> </td>
                                        <td> <c:out value="${datos24 * 120} AR$"></c:out> </td>
                                        </tr>
                                </c:if>
                            
                                <c:if test="${datos25 >= 1}">
                                    <tr>
                                        <td>25</td>
                                        <td>Ferrero Rocher x12 Unidades</td>
                                        <td> <c:out value="${datos25}"></c:out> </td>
                                        <td> <c:out value="${datos25 * 180} AR$"></c:out> </td>
                                        </tr>
                                </c:if>

                            </tbody>

                            <tfoot>
                            <td></td>
                            <td></td>
                            <td>Cantidad total de productos: <% out.print(cantAguaConGas + cantAguaSinGas + cantCerveza + cantCheetos + cantCola + cantDulLeche + cantHarina
                                        + cantLecheDes + cantLecheEnt + cantOreo + cantPanes + cantPapas + cantPaty + cantQueso + cantQueso + cantSalchichas + cantSprite + cantTallarines + cantTirabuzon
                                        + cantTortita + cantVainilla + cantWhisky + cantPanPancho + cantSugus + cantDolca + cantFerrero); %> </td>
                            <td>Precio total:  <% out.print((cantAguaConGas * 60) + (cantAguaSinGas * 40) + (cantCerveza * 100) + (cantCola * 90) + (cantSprite * 90) + (cantCheetos * 140)
                                        + (cantPapas * 140) + (cantPaty * 140) + (cantSalchichas * 110) + (cantQueso * 300) + (cantLecheEnt * 150) + (cantLecheDes * 180) + (cantPanes * 160) + (cantHarina * 120)
                                        + (cantTallarines * 100) + (cantTirabuzon * 100) + (cantVainilla * 80) + (cantDulLeche * 80) + (cantTortita * 90) + (cantOreo * 90) + (cantWhisky * 300) + (cantPanPancho * 140) + 
                                            (cantSugus * 80) + (cantDolca * 120) + (cantFerrero * 180) + "AR$");%> </td>
                            </tfoot>
                        </table>

                        <style>
                            #BotonComprar{
                                font-family: 'Akshar', sans-serif;
                                float: right;
                                margin-top: 20px;
                                margin-right: 20px;
                                padding: 10px 20px;
                                font-size: 1.3rem;
                                transition: 0.4s ease;
                                border: 1px solid black;
                                color: white;
                                background-color: black;
                                border-radius: 10px;
                            }

                            #BotonComprar:hover{
                                color: black;
                                background-color: white;
                                cursor: pointer;
                            }
                        </style>

                        <form action="CompraExitosa.jsp">
                            <button type="submit" id="BotonComprar">Comprar</button>
                        </form>
                </c:when>

                <c:otherwise>
                    <style>
                        #opcional{
                            margin-left: 20px;
                            margin-top: 30px;
                        }

                        #opcional h1{
                            font-size: 30px;
                        }

                        #opcional p{
                            font-size: 23px;
                        }
                    </style>

                    <article id="opcional">
                        <h1>¡No se han encontrado productos!</h1>
                        <p>Cuando agregues productos al carrito apareceran automaticamente aqui.</p>
                    </article>
                </c:otherwise>

            </c:choose>
        </section>

        <footer>
            <br>
            <p>Derechos Reservados a Matias Abregú ®</p>    
            <br>
            <a target="blank" href="https://api.whatsapp.com/send?phone=3512753590">Contactame aqui</a>
        </footer>

    </body>

</html>
