<!DOCTYPE html>
<html lang="es">
<head>
    <!--SIN SCRIPTS, SIGUIENDO LA CONSIGNA-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle | CAC-MOVIES</title>
    <link rel="stylesheet" href="estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,300&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
</head>
<body>
    <header class="header">
        <nav class="navegacion">
            <a class="anclaLogo" href="index.jsp">
                <i class="bi bi-camera"></i>
                <span>CAC-Movies</span>
            </a>
            <ul class="listaNav">
                <li class="listaItem"><a class="linkNav" href="index.jsp#tendencias">Tendencias</a></li>
                <li class="listaItem"><a class="linkNav" href="IndexRegistro.jsp">Registrarse</a></li>
                <li class="listaItem"><a class="linkNav iniciarSesion" href="IndexInicioSesion.jsp">Iniciar Sesión</a></li>
            </ul>
        </nav>
    </header>
    <main id="mainDetalle" class="mainDetalle">
        <section class="detalle">
            <div class="contenedorDetalle" >
                <div class="imgDetalle">
                    <img src="https://giselemilagros88.github.io/cac_movies_javaphp/assets/img/mario.jpg" alt="mario pelicula 2023">
                </div>
                <div class="textoDetalle">
                    <h1>The Super Mario Bros. Movie (2023)</h1>
                    <p>04/05/2023 • Animation, Family, Adventure, Fantasy, Comedy • 1h 33m</p>
                    <h2>Overview</h2>
                    <p>While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.</p>
                    <div class="contenedorCreditos">
                        <div>
                            <h3>Aaron Horvath</h3>
                            <p>Director</p>
                        </div>
                        <div>
                            <h3>Michael Jelenic</h3>
                            <p>Director</p>
                        </div>
                        <div>
                            <h3>Matthew Fogel</h3>
                            <p>Writer</p>
                        </div>
                    </div>
                   
                </div>
            </div>
           
    
          </section>
    
          <section class="trailer">
            <div class="contenedorTrailer">
                <h2>Ver trailer</h2>
                
               <iframe width="560" height="315" src="https://www.youtube.com/embed/RjNcTBXTk4I?si=7fnK8NtlxetW0d1R" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
           
            
              
            </div>
            <div class="contenedorInfo">
                <div class="contenedorInfo">
                    <div class="redes">
                        <ul>
                            <li><a href="https://www.facebook.com/supermariomovie" target="_blank"><i class="bi-facebook"></i></a></li>
                            <li><a href="https://twitter.com/supermariomovie" target="_blank"><i class="bi-twitter"></i></a></li>
                            <li><a href="https://instagram.com/supermariomovie/" target="_blank"><i class="bi-instagram"></i></a></li>
                            <li><a href="https://www.thesupermariobros.movie/" target="_blank"><i class="bi-link"></i></a></li>
                        </ul>
                    </div>
                </div>
            
                <div class="info">
                    <table>
                        <thead>
                            <tr>
                                <th colspan="2">Info</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><strong>Status</strong></td>
                                <td>Released</td>
                            </tr>
                            <tr>
                                <td><strong>Original Language</strong></td>
                                <td>English</td>
                            </tr>
                            <tr>
                                <td><strong>Budget</strong></td>
                                <td> $100.000.000,00</td>
                            </tr>
                            <tr>
                                <td><strong>Revenue</strong></td>
                                <td> $1.347.013.866,00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
    
            </div>
    
          </section>
    
        
    </main>
    <footer class="footer">
        <nav class="navegacion">
            <ul class="listaNav">
                <li class="listaItem"><a class="linkNav " href="">Términos y condiciones</a></li>
                <li class="listaItem"><a class="linkNav " href="">Preguntas frecuentes</a></li>
                <li class="listaItem"><a class="linkNav " href="">Ayuda</a></li>
                <li class="listaItem"><a class="linkNav administradorPeliculas" href="">Administrador Peliculas</a></li>
            </ul>
        </nav>
        <a href="#main" class="flechaArriba">
            <img src="https://giselemilagros88.github.io/cac_movies_javaphp/assets/img/flecha-hacia-arriba.png" alt="ir arriba flecha">
        </a>
    </footer>
</body>
</html>
