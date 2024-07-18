<!DOCTYPE html>
<html lang="es">
<head>
    <!--SIN SCRIPTS, SIGUIENDO LA CONSIGNA-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro | CAC-MOVIES</title>
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
                <h2 class="tituloRegistrarse">Registro</h2>
                <div>
                    <input type="text" placeholder="Nombre" id="nombre" name="nombre" required class="form-control">
                    <div class="error-text"></div>
                </div>
                <div>
                    <input type="text" placeholder="Apellido" id="apellido" name="apellido" required class="form-control">
                    <div class="error-text"></div>
                </div>
                <div>
                    <input type="email" placeholder="Email" id="email" name="email" required pattern=".+@.+..+" class="form-control">
                    <div class="error-text"></div>
                </div>
                <div>
                    <input type="password" placeholder="Contraseña" id="password" name="password" required pattern=".{8,}" class="form-control">
                    <div class="error-text"></div>
                </div>
                <div>
                    <input type="date" placeholder="Fecha de Nacimiento (dd/mm/aaaa)" id="fechaNacimiento" name="fechaNacimiento" required class="form-control">
                    <div class="error-text"></div>
                </div>
                <div>
                    <select name="pais" id="pais" required class="form-control">
                        <option value="">País</option>
                        <option value="AR">Argentina</option>
                        <option value="BO">Bolivia</option>
                        <option value="BR">Brasil</option>
                        <option value="CH">Chile</option>
                        <option value="CO">Colombia</option>
                        <option value="EC">Ecuador</option>
                        <option value="PY">Paraguay</option>
                        <option value="PE">Perú</option>
                        <option value="UY">Uruguay</option>
                        <option value="VE">Venezuela</option>
                    </select>
                    <div class="error-text"></div>
                </div>
                <div class="terminos">
                    <input class="check" type="checkbox" id="terminos" required>
                    <label class="textoCheck" for="terminos">Acepto términos y condiciones</label>
                    <div class="error-text"></div>
                </div>
                <div>
                    <input class="boton btn btn-primary" type="submit" value="Registrarse">
                </div>
                <div>
                    <a class="ayuda" href="#">Necesitas ayuda?</a>
                </div>
            </form>
        </section>
    </main>
</body>
</html>
