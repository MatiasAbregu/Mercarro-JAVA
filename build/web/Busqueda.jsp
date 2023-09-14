<%-- 
    Author: Matias Abregú
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

    <head>
        <title>Mercarro | Productos relacionados</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="EstiloBusqueda.css"/> 
        <link rel="shortcut icon" href="img/Mercarrologo.ico">
        <meta charset=UTF-8">
    </head>

    <body>

        <%
            String productoRel = request.getParameter("busqueda");
            productoRel = productoRel.toLowerCase();
            pageContext.setAttribute("producto", productoRel);
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

            <article style="padding-left: 1px; margin-top: 50px;">

                <c:choose>

                    <c:when test="${producto == 'bebida' or producto  == 'bebidas'}"> 
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 2px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

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
                        </form>
                    </c:when>

                    <c:when test="${producto == 'gaseosa' or producto == 'gaseosas'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 6px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

                        <form action="ProductosRegistrados" method="get">
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
                        </form>
                    </c:when>

                    <c:when test="${producto == 'alcohol' or producto == 'alcoholes'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 6px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

                        <form action="ProductosRegistrados" method="get">
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
                        </form>
                    </c:when>

                    <c:when test="${producto == 'snack' or producto == 'snacks'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 6px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

                        <form action="ProductosRegistrados" method="get">
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
                        </form>
                    </c:when>

                    <c:when test="${producto == 'frigorificos' or producto == 'frigorifico'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 2px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

                        <form action="ProductosRegistrados" method="get">
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
                        </form>
                    </c:when>    

                    <c:when test="${producto == 'lacteo' or producto == 'lacteos'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 2px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

                        <form action="ProductosRegistrados" method="get">
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
                        </form>
                    </c:when>

                    <c:when test="${producto == 'harina' or producto == 'harinas'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 2px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

                        <form action="ProductosRegistrados" method="get">
                            <article class="Productos">
                                <img src="img/Harina-Pureza-Ultrarefinada.png"/>
                                <p>Harina Pureza Ultrarefinada 1kg</p>
                                <button type="submit" name="Producto" value="Harina">Agregar</button>
                            </article>
                        </form>
                    </c:when>

                    <c:when test="${producto == 'pan' or producto == 'panes'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 2px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

                        <form action="ProductosRegistrados" method="get">
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
                        </form>
                    </c:when>

                    <c:when test="${producto == 'pasta' or producto == 'pastas' or producto == 'fideo' or producto == 'fideos'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 2px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel); %>":</h1>

                        <form action="ProductosRegistrados" method="get">
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
                        </form>
                    </c:when>

                    <c:when test="${producto == 'galleta' or producto == 'galletas'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 2px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <h1 style="margin-left: 16px;">Productos con la palabra "<% out.print(productoRel);%>":</h1>

                        <form action="ProductosRegistrados" method="get">
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
                        </form>
                    </c:when>

                    <c:when test="${producto == 'golosina' or producto == 'golosinas'}">
                        <style>
                            .Productos{
                                margin-left: 2px;
                                margin-right: 2px;
                                margin-bottom: 30px;
                                display: inline-block;
                            }

                            .Productos p{
                                text-align: center;
                                font-size: 18px;
                            }

                            .Productos button{
                                font-family: 'Akshar', sans-serif;
                                font-size: 20px;
                                margin-left: 85px;
                                padding: 1px 14px;
                                background-color: gray;
                                color: white;
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos button:hover{
                                background-color: rgba(0, 0, 0, 0.8);
                                cursor: pointer;
                            }

                            .Productos img{
                                border: 2px solid black;
                                border-radius: 40px;
                                transition: 0.5s ease;
                            }

                            .Productos img:hover{
                                box-shadow: 0px 2px 10px black;
                            }
                        </style>

                        <form action="ProductosRegistrados" method="get">
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
                    </c:when>

                    <c:otherwise>
                        <style>
                            article h1{
                                margin-left: 2px;
                                font-size: 30px;
                            }

                            article h3{
                                margin-left: 12px;
                                font-size: 22px;
                            }

                            article ul{
                                margin-left: 6px;
                                font-size: 20px;
                            }
                        </style>

                        <article>
                            <h1>¡No se ha encontrado lo que estás buscando!</h1>
                            <h3>Te invitamos a que sigas navegando en Mercarro y pruebes en buscar con las siguientes palabras claves: </h3>
                            <ul>
                                <li>Bebidas</li>
                                <li>Gaseosas</li>
                                <li>Alcohol</li>
                                <li>Snacks</li>
                                <li>Frigorificos</li>
                                <li>Lacteos</li>
                                <li>Harina</li>
                                <li>Pan</li>
                                <li>Pasta</li>
                                <li>Fideos</li>
                                <li>Galletas</li>
                                <li>Golosinas</li>
                            </ul>
                        </c:otherwise>

                    </c:choose>    
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
