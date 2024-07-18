package com.cac.proyecto;

// Importaciones necesarias para la clase Controlador
import com.fasterxml.jackson.databind.ObjectMapper; // Importación de ObjectMapper de Jackson para convertir objetos Java a JSON y viceversa
import javax.servlet.ServletException; // Importación de ServletException para manejar excepciones relacionadas con Servlets
import javax.servlet.annotation.WebServlet; // Importación de WebServlet para la anotación que mapea este servlet a una URL específica
import javax.servlet.http.HttpServlet; // Importación de HttpServlet para extender esta clase y manejar peticiones HTTP
import javax.servlet.http.HttpServletRequest; // Importación de HttpServletRequest para manejar las solicitudes HTTP
import javax.servlet.http.HttpServletResponse; // Importación de HttpServletResponse para manejar las respuestas HTTP
import java.io.IOException; // Importación de IOException para manejar excepciones de entrada/salida
import java.sql.*; // Importación de todas las clases JDBC para operaciones de base de datos
import java.util.ArrayList; // Importación de ArrayList para manejar listas dinámicas de objetos
import java.util.List; // Importación de List para manejar colecciones de elementos


// Clase Controlador: Maneja las peticiones HTTP para insertar y recuperar películas.
@WebServlet("/peliculas") // Anotación que mapea este servlet a la URL "/peliculas"
public class Controlador extends HttpServlet { // Declaración de la clase Controlador que extiende HttpServlet
   //parte de la prueba*********************************************

    private static final long serialVersionUID = 1L;

    // Método POST para insertar una nueva película desde una solicitud JSON
   /* protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Configurar cabeceras CORS
        response.setHeader("Access-Control-Allow-Origin", "*"); // Permitir acceso desde cualquier origen
        response.setHeader("Access-Control-Allow-Methods", "*"); // Métodos permitidos
        response.setHeader("Access-Control-Allow-Headers", "Content-Type"); // Cabeceras permitidas
        Conexion conexion = new Conexion();  // Crear una nueva conexión a la base de datos
        Connection conn = conexion.getConnection();  // Obtener la conexión establecida

        try {
            ObjectMapper mapper = new ObjectMapper();  // Crear un objeto ObjectMapper para convertir JSON a objetos Java
            Pelicula pelicula = mapper.readValue(request.getInputStream(), Pelicula.class);  // Convertir el JSON de la solicitud a un objeto Pelicula
        
            // Consulta SQL para insertar una nueva película en la tabla 'peliculas'
            String query = "INSERT INTO peliculas (titulo, genero, duracion, imagen, anio, director, actores_principales) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);  // Indicar que queremos obtener las claves generadas automáticamente
        
            // Establecer los parámetros de la consulta de inserción
            statement.setString(1, pelicula.getTitulo());
            statement.setString(2, pelicula.getGenero());
            statement.setString(3, pelicula.getDuracion());
            statement.setString(4, pelicula.getImagen());
            statement.setInt(5, pelicula.getAnio());
            statement.setString(6, pelicula.getDirector());
            statement.setString(7, pelicula.getActoresPrincipales());
        
            statement.executeUpdate();  // Ejecutar la consulta de inserción en la base de datos
        
            // Obtener las claves generadas automáticamente (en este caso, el ID de la película)
            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                Long idPeli = rs.getLong(1);  // Obtener el valor del primer campo generado automáticamente (en este caso, el ID)
                
                // Devolver el ID de la película insertada como JSON en la respuesta
                response.setContentType("application/json");  // Establecer el tipo de contenido de la respuesta como JSON
                String json = mapper.writeValueAsString(idPeli);  // Convertir el ID a formato JSON
                response.getWriter().write(json);  // Escribir el JSON en el cuerpo de la respuesta HTTP
            }
            
            response.setStatus(HttpServletResponse.SC_CREATED);  // Configurar el código de estado de la respuesta HTTP como 201 (CREATED)
        } catch (SQLException e) {
            e.printStackTrace();  // Imprimir el error en caso de problemas con la base de datos
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  // Configurar el código de estado de la respuesta HTTP como 500 (INTERNAL_SERVER_ERROR)
        } catch (IOException e) {
            e.printStackTrace();  // Imprimir el error en caso de problemas de entrada/salida (por ejemplo, problemas con la solicitud o respuesta HTTP)
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  // Configurar el código de estado de la respuesta HTTP como 500 (INTERNAL_SERVER_ERROR)
        } finally {
            conexion.close();  // Cerrar la conexión a la base de datos al finalizar la operación
        }
        
    }*/
    //prueba****************************************************

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // Configurar cabeceras CORS
            response.setHeader("Access-Control-Allow-Origin", "*");
            response.setHeader("Access-Control-Allow-Methods", "*");
            response.setHeader("Access-Control-Allow-Headers", "Content-Type");
    
            try {
                // Obtener los datos del formulario JSON
                ObjectMapper mapper = new ObjectMapper();
                Pelicula pelicula = mapper.readValue(request.getInputStream(), Pelicula.class);
    
                // Guardar la película en la base de datos
                String query = "INSERT INTO peliculas (titulo, genero, duracion, imagen, anio, director, actores_principales) VALUES (?, ?, ?, ?, ?, ?, ?)";
                try (Connection conn = new Conexion().getConnection();
                     PreparedStatement statement = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
                    statement.setString(1, pelicula.getTitulo());
                    statement.setString(2, pelicula.getGenero());
                    statement.setString(3, pelicula.getDuracion());
                    statement.setString(4, pelicula.getImagen());
                    statement.setInt(5, pelicula.getAnio());
                    statement.setString(6, pelicula.getDirector());
                    statement.setString(7, pelicula.getActoresPrincipales());
                    statement.executeUpdate();
    
                    // Obtener las claves generadas automáticamente (en este caso, el ID de la película)
                    try (ResultSet rs = statement.getGeneratedKeys()) {
                        if (rs.next()) {
                            Long idPeli = rs.getLong(1);
                            // Devolver el ID de la película insertada como JSON en la respuesta
                            response.setContentType("application/json");
                            String json = mapper.writeValueAsString(idPeli);
                            response.getWriter().write(json);
                        }
                    }
    
                    response.setStatus(HttpServletResponse.SC_CREATED);
                } catch (SQLException e) {
                    e.printStackTrace();
                    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                    response.getWriter().write("Error al guardar la película");
                }
            } catch (IOException e) {
                e.printStackTrace();
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Error al procesar la solicitud");
            }
        }
    




    // Método GET para obtener todas las películas almacenadas en la base de datos y devolverlas como JSON
   /*  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Configurar cabeceras CORS
        response.setHeader("Access-Control-Allow-Origin", "*"); // Permitir acceso desde cualquier origen
        response.setHeader("Access-Control-Allow-Methods", "*"); // Métodos permitidos
        response.setHeader("Access-Control-Allow-Headers", "Content-Type"); // Cabeceras permitidas
        Conexion conexion = new Conexion();  // Crear una nueva conexión a la base de datos
        Connection conn = conexion.getConnection();  // Obtener la conexión establecida

        try {
            // Consulta SQL para seleccionar todas las películas de la tabla 'peliculas'
            String query = "SELECT * FROM peliculas";
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);  // Ejecutar la consulta y obtener los resultados

            List<Pelicula> peliculas = new ArrayList<>();  // Crear una lista para almacenar objetos Pelicula

            // Iterar sobre cada fila de resultados en el ResultSet
            while (resultSet.next()) {
                // Crear un objeto Pelicula con los datos de cada fila
                Pelicula pelicula = new Pelicula(
                    resultSet.getInt("id_pelicula"),
                    resultSet.getString("titulo"),  
                    resultSet.getString("genero"),
                    resultSet.getString("duracion"),
                    resultSet.getString("imagen"),
                    resultSet.getInt("anio"),
                    resultSet.getString("director"),
                    resultSet.getString("actores_principales")
                );
                peliculas.add(pelicula);  // Agregar el objeto Pelicula a la lista
            }

            ObjectMapper mapper = new ObjectMapper();  // Crear un objeto ObjectMapper para convertir objetos Java a JSON
            String json = mapper.writeValueAsString(peliculas);  // Convertir la lista de películas a formato JSON

            response.setContentType("application/json");  // Establecer el tipo de contenido de la respuesta como JSON
            response.getWriter().write(json);  // Escribir el JSON en el cuerpo de la respuesta HTTP
        } catch (SQLException e) {
            e.printStackTrace();  // Imprimir el error en caso de problemas con la base de datos
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  // Configurar el código de estado de la respuesta HTTP como 500 (INTERNAL_SERVER_ERROR)
        } finally {
            conexion.close();  // Cerrar la conexión a la base de datos al finalizar la operación
        }
    }*/

    //2da parte de la prueba ***********************************
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Configurar cabeceras CORS
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "*");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
    
        try {
            // Consulta SQL para seleccionar todas las películas de la tabla 'peliculas'
            String query = "SELECT * FROM peliculas";
            List<Pelicula> peliculas = new ArrayList<>();
    
            try (Connection conn = new Conexion().getConnection();
                 Statement statement = conn.createStatement();
                 ResultSet resultSet = statement.executeQuery(query)) {
                // Iterar sobre cada fila de resultados en el ResultSet
                while (resultSet.next()) {
                    // Crear un objeto Pelicula con los datos de cada fila
                    Pelicula pelicula = new Pelicula(
                        resultSet.getInt("id_pelicula"),
                        resultSet.getString("titulo"),
                        resultSet.getString("genero"),
                        resultSet.getString("duracion"),
                        resultSet.getString("imagen"),
                        resultSet.getInt("anio"),
                        resultSet.getString("director"),
                        resultSet.getString("actores_principales")
                    );
                    peliculas.add(pelicula);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Error al obtener las películas");
                return;
            }
    
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(peliculas);
    
            response.setContentType("application/json");
            response.getWriter().write(json);
        } catch (IOException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Error al procesar la solicitud");
        }
    }

}