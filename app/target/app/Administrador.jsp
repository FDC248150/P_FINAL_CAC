

<!DOCTYPE html>

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador de Peliculas | CAC-MOVIES</title>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="estilos.css">
    <script src="https://kit.fontawesome.com/f7fb471b65.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,300&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
</head>
<body>
    <header class="header">
        <nav class="navegacion">
            <a class="anclaLogo" href="index.jsp">
                <i class="fas fa-film" aria-hidden="true"></i>
                <span>CAC-Movies</span>
            </a>
            <ul class="listaNav">
                <li class="listaItem"><a class="linkNav" href="index.jsp#tendencias">Tendencias</a></li>
                <li class="listaItem"><a class="linkNav" href="./IndexRegistro.jsp">Registrarse</a></li>
                <li class="listaItem"><a class="linkNav iniciarSesion" href="./IndexInicioSesion.jsp">Iniciar Sesión</a></li>
            </ul>
        </nav>
    </header>
    <main id="mainDetalle" class="mainDetalle">
        <section class="container mt-4 mb-5">
            <h1>Gestión de películas</h1>
            <p>En esta sección se podrá llevar a cabo la gestión de las películas del portal</p>
            <!-- Formulario para dar de alta una película nueva // MODIFICADO -->
             <!--VOLVER A MODIFICAR GuardarPeliculasServlet por CONTROLADOR-->
            <form id="formNuevaPelicula" action="" method="post" enctype="multipart/form-data" class="row row-cols-lg-auto g-3 align-items-center">
                <div class="col-12 col-md-6">
                    <label for="titulo">Título</label>
                    <input class="form-control" type="text" name="titulo" id="titulo" required>
                </div>
                <div class="col-6 col-md-4">
                    <label for="genero">Género</label>
                    <input class="form-control" type="text" name="genero" id="genero" required>
                </div>
                <div class="col-6 col-md-2">
                    <label for="duracion">Duración (min)</label>
                    <input class="form-control" type="number" name="duracion" id="duracion" required>
                </div>
                <div class="col-6 col-md-2">
                    <label for="ano">Año</label>
                    <input class="form-control" type="number" name="ano" id="ano" required>
                </div>
                <div class="col-12 col-md-6">
                    <label for="director">Director</label>
                    <input class="form-control" type="text" name="director" id="director" required>
                </div>
                <div class="col-12 col-md-6">
                    <label for="actores">Actores Principales</label>
                    <input class="form-control" type="text" name="actores" id="actores" required>
                </div>
                <div class="col-12 col-md-8">
                    <label for="imagen">Imagen</label>
                    <input class="form-control" type="file" name="imagen" id="imagen" required>
                </div>
                <div class="col-12">
                    <input class="align-self-center btn btn-success" type="submit" value="Agregar Película">
                </div>
            </form>
        </section>
        <hr>
        <!-- Aquí se van a mostrar las películas y las acciones modificar y dar de baja -->
        <section class="container mt-5 mb-5 overflow-auto">
            <h2>Listado de Películas</h2>
            <p class="small">Para ver todos los datos de las películas, elija una y toque modificar</p>
            <table class="table table-dark table-striped" id="tablePeliculas">
                <thead>
                    <tr>
                        <th>Título</th>
                        <th>Duración</th>
                        <th>Género</th>
                        <th>Año</th>
                        <th>Director</th>
                        <th>Actores Principales</th>
                        <th>Imagen</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody id="bodyTablePeliculas">
                    <!-- Este es solo un ejemplo porque se va a llenar desde JS -->
                    <tr>
                        <td>Terminator</td>
                        <td>107</td>
                        <td>Acción</td>
                        <td>1984</td>
                        <td>James Cameron</td>
                        <td>Arnold Schwarzenegger, Linda Hamilton</td>
                        <td><img width="150px" src="../assets/img/terminator.jpg" alt="Terminator"></td>
                        <td><button class="btn btn-danger btn-delete" data-id="1">Eliminar</button></td>
                    </tr>
                </tbody>
            </table>
        </section>
    </main>
    <footer class="footer">
        <nav class="navegacion">
            <ul class="listaNav">
                <li class="listaItem"><a class="linkNav" href="">Términos y condiciones</a></li>
                <li class="listaItem"><a class="linkNav" href="">Preguntas frecuentes</a></li>
                <li class="listaItem"><a class="linkNav" href="">Ayuda</a></li>
                <li class="listaItem"><a class="linkNav administradorPeliculas" href="">Administrador Películas</a></li>
            </ul>
        </nav>
        <a href="#main" class="flechaArriba">
            <img src="../assets/img/flecha-hacia-arriba.png" alt="ir arriba flecha">
        </a>
    </footer>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>AOS.init();</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="../js/get_peliculas.js"></script>
    <script src="../js/post_pelicula.js"></script>
   
</body>
</html>