<!DOCTYPE html>
<html lang="es">
<head>
    <!--SIN SCRIPTS, SIGUIENDO LA CONSIGNA-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión | CAC-MOVIES</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="estilos.css">
</head>
<body class="bodyRegistrarse">
    <header class="headerRegistrarse">
        <a class="anclaLogo" href="index.jsp">
            <i class="bi bi-camera"></i>
            <span>CAC-Movies</span>
        </a>
    </header>
    <main id="main" class="main">
        <section class="seccionRegistrarse">
            <!--VALIDACIONES DE FORM POR HTML-->
            <form action="" method="get">
                <h2 class="tituloRegistrarse">Iniciar Sesión</h2>
                <div>
                    <input type="email" placeholder="Email" id="email" name="email" required pattern=".+@.+..+" class="form-control">
                    <div class="error-text"></div>
                </div>
                <div>
                    <input type="password" placeholder="Contraseña" id="password" name="password" required pattern=".{8,}" class="form-control">
                    <div class="error-text"></div>
                </div>
                <div>
                    <input class="boton btn btn-primary" type="submit" value="Iniciar Sesión">
                </div>
                <div>
                    <a id="ayuda" class="ayuda" href="IndexRegistro.jsp">Registrarse</a>
                </div>
            </form>
        </section>
    </main>
</body>
</html>
