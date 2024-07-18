<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peliculas</title>
</head>
<body>
    <h1>Esto pertenece a la api</h1>
    <h1>y probamos</h1>
</body>
</html>-->
<!DOCTYPE html>
<html lang="en">
<head>
    <!--SIN SCRIPTS, SIGUIENDO LA CONSIGNA-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CAC-Movies</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="estilos.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,300&amp;display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
    <body>
        <header class="header">
            <nav class="navegacion">
                <a class="anclaLogo" href="#">
                    <i class="bi bi-camera"></i>
                    <span>CAC-Movies</span>
                </a>
                <ul class="listaNav">
                    <li class="listaItem"><a class="linkNav" href="#tendencias">Tendencias</a></li>
                    <li class="listaItem"><a class="linkNav" href="IndexRegistro.jsp">Registrarse</a></li>
                    <li class="listaItem"><a class="linkNav iniciarSesion" href="IndexInicioSesion.jsp">Iniciar Sesión</a></li>
                </ul>
            </nav>
        </header>
        <main id="main" class="main">
            <section class="sectionPrincipal">
                <h1 class="tituloPrincipal">Películas y series ilimitadas <br> en un solo lugar</h1>
                <h2 class="subtituloPrincipal">Disfruta donde quieras. <br> Cancela en cualquier momento.</h2>
                <a class="botonRegistrarse" href="IndexRegistro.jsp">Registrate</a>
                <a class="botonIniciarSesion" href="IndexInicioSesion.jsp"></a>
              </section>
            <section class="buscadorPrincipal">
                <h2 class="tituloSection">¿Qué estas buscando para ver?</h2>
                <form class="buscadorPeliculas">
                  <input class="inputBuscador" type="text" placeholder="Buscar..." id="buscar" name="buscar">
                  <input class="botonBuscador" type="submit" value="Buscar">
                </form>
              </section>
            <hr>
            <section id="tendencias" class="peliculasTendencia" data-page="1">
                <h3 class="tituloSection">Las tendencias de hoy</h3>
                <div class="peliculas" id="tendenciasContainer"><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg" alt="Kung Fu Panda 4" loading="lazy"><div class="tituloPelicula"><h4>Kung Fu Panda 4</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg" alt="Dune: Part Two" loading="lazy"><div class="tituloPelicula"><h4>Dune: Part Two</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//tMefBSflR6PGQLv7WvFPpKLZkyk.jpg" alt="Godzilla x Kong: The New Empire" loading="lazy"><div class="tituloPelicula"><h4>Godzilla x Kong: The New Empire</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//jFK2ZLQUzo9pea0jfMCHDfvWsx7.jpg" alt="The Wages of Fear" loading="lazy"><div class="tituloPelicula"><h4>The Wages of Fear</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//bXi6IQiQDHD00JFio5ZSZOeRSBh.jpg" alt="Road House" loading="lazy"><div class="tituloPelicula"><h4>Road House</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//p1LbrdJ53dGfEhRopG71akfzOVu.jpg" alt="After the Pandemic" loading="lazy"><div class="tituloPelicula"><h4>After the Pandemic</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//rULWuutDcN5NvtiZi4FRPzRYWSh.jpg" alt="Madame Web" loading="lazy"><div class="tituloPelicula"><h4>Madame Web</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//8QVDXDiOGHRcAD4oM6MXjE0osSj.jpg" alt="Alienoid" loading="lazy"><div class="tituloPelicula"><h4>Alienoid</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//n726fdyL1dGwt15bY7Nj3XOXc4Q.jpg" alt="Heart of the Hunter" loading="lazy"><div class="tituloPelicula"><h4>Heart of the Hunter</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//ldfCF9RhR40mppkzmftxapaHeTo.jpg" alt="Migration" loading="lazy"><div class="tituloPelicula"><h4>Migration</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//ccJpK0rqzhQeP7Mrs2uKqObFY4L.jpg" alt="Creation of the Gods I: Kingdom of Storms" loading="lazy"><div class="tituloPelicula"><h4>Creation of the Gods I: Kingdom of Storms</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//9u6HEtZJdZDjPGGJq6YEuhPnoan.jpg" alt="Imaginary" loading="lazy"><div class="tituloPelicula"><h4>Imaginary</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//d5NXSklXo0qyIYkgV94XAgMIckC.jpg" alt="Dune" loading="lazy"><div class="tituloPelicula"><h4>Dune</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//3UKlVa1CBeQkRksHV5OfFTO52qd.jpg" alt="Hunters" loading="lazy"><div class="tituloPelicula"><h4>Hunters</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//AgHbB9DCE9aE57zkHjSmseszh6e.jpg" alt="Damsel" loading="lazy"><div class="tituloPelicula"><h4>Damsel</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//oPXzCV01ysDmnmpJOkiVqaZQ5QR.jpg" alt="The Adventures of Maid Marian" loading="lazy"><div class="tituloPelicula"><h4>The Adventures of Maid Marian</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//cIzk6GhxEZuweekGFXWEoAyuaMX.jpg" alt="The First Omen" loading="lazy"><div class="tituloPelicula"><h4>The First Omen</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg" alt="No Way Up" loading="lazy"><div class="tituloPelicula"><h4>No Way Up</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//ba1NlageLgbxOPLXjX0qX7HDBTc.jpg" alt="Penoza: The Final Chapter" loading="lazy"><div class="tituloPelicula"><h4>Penoza: The Final Chapter</h4></div></div></a></div><div class="peliculas"><a href="indexDetalle.html"><div class="pelicula"><img class="imgTendencia" src="https://image.tmdb.org/t/p/w500//8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg" alt="Oppenheimer" loading="lazy"><div class="tituloPelicula"><h4>Oppenheimer</h4></div></div></a></div></div>
                <button class="boton anterior" >Anterior</button>  
                <button class="boton siguiente" >Siguiente</button>
            </section>
            <hr>

            <section class="peliculasAclamadas">
                <h3 class="tituloSection">Las más aclamadas</h3>
                <div class="aclamadas" id="aclamadasContainer">
                    <div class="peliculaItem fade-up"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg" alt="The Shawshank Redemption" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//3bhkrj58Vtu7enYsRolD1fZdja1.jpg" alt="The Godfather" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg" alt="The Godfather Part II" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg" alt="Schindler's List" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//ow3wq89wM8qd5X7hWKxiRfsFf9C.jpg" alt="12 Angry Men" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//39wmItIWsg5sZMyRUHLkWBcuVCM.jpg" alt="Spirited Away" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//lfRkUr7DYdHldAqi3PwdQGBRBPM.jpg" alt="Dilwale Dulhania Le Jayenge" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//qJ2tW6WMUDux911r6m7haRef0WH.jpg" alt="The Dark Knight" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//7IiTTgloJzvGI1TAYymCfbfl3vT.jpg" alt="Parasite" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//8VG8fDNiy50H4FedGwdSVUPoaJe.jpg" alt="The Green Mile" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//q719jXXEzOoYaps6babgKnONONX.jpg" alt="Your Name." loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg" alt="Pulp Fiction" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg" alt="The Lord of the Rings: The Return of the King" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//arw2vcBveWOVZr6pxd9XTd1TdQa.jpg" alt="Forrest Gump" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//bX2xnavhMYjWDoZp1VM6VnU1xwe.jpg" alt="The Good, the Bad and the Ugly" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg" alt="GoodFellas" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//k9tv1rXZbOhH7eiCk378x61kNQ1.jpg" alt="Grave of the Fireflies" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//8OKmBV5BUFzmozIC3pPWKHy17kx.jpg" alt="Seven Samurai" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//8SRUfRUi6x4O68n0VCbDNRa6iGL.jpg" alt="Cinema Paradiso" loading="lazy"></div><div class="peliculaItem"><img class="imgAclamada" src="https://image.tmdb.org/t/p/w500//74hLDKjD5aGYOotO6esUVaeISa2.jpg" alt="Life Is Beautiful" loading="lazy"></div></div>
                </div>
            </section>
            

        </main>
        <footer class="footer">
            <nav class="navegacion">
                <ul class="listaNav">
                    <li class="listaItem"><a class="linkNav" href="">Términos y condiciones</a></li>
                    <li class="listaItem"><a class="linkNav" href="">Preguntas frecuentes</a></li>
                    <li class="listaItem"><a class="linkNav" href="">Ayuda</a></li>
                    <li class="listaItem"><a class="linkNav administradorPeliculas" href="Administrador.jsp">Administrador Peliculas</a></li>
                </ul>
            </nav>
            <a href="#main" class="flechaArriba">
                <img src="https://giselemilagros88.github.io/cac_movies_javaphp/assets/img/flecha-hacia-arriba.png" alt="ir arriba flecha">
            </a>
        </footer>

        <span id="PING_IFRAME_FORM_DETECTION"></span>
    </body>

</html>
