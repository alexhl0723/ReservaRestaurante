package servlet;

import java.io.IOException;

import entidades.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.RegistroModel;

/**
 * Servlet implementation class RegistrarServlet
 */
@WebServlet("/RegistrarServlet")
public class RegistrarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los datos del formulario
        String nombre = request.getParameter("txtNombre");
        String apellidoPaterno = request.getParameter("txtApellidoPaterno");
        String apellidoMaterno = request.getParameter("txtApellidoMaterno");
        String email = request.getParameter("txtEmail");
        String password = request.getParameter("txtPassword");
        String telefono = request.getParameter("txtTelefono");

        // Crear un nuevo usuario
        Usuario nuevoUsu = new Usuario();
        nuevoUsu.setNombre(nombre);
        nuevoUsu.setApellidoPaterno(apellidoPaterno);
        nuevoUsu.setApellidoMaterno(apellidoMaterno);
        nuevoUsu.setEmail(email);
        nuevoUsu.setPassword(password);
        nuevoUsu.setTelefono(telefono);

        // Registrar usuario en la base de datos
        RegistroModel registroModel = new RegistroModel();
        Usuario usuarioRegistrado = registroModel.registrarCuenta(nuevoUsu);

        if (usuarioRegistrado.getIdUsuario() != null) {
            System.out.println("Insertó en BD");
            request.setAttribute("mensaje", "Registro exitoso");
        } else {
            System.out.println("No insertó en BD");
            request.setAttribute("mensaje", "Ocurrió un problema");
        }

        // Redirigir a una página de confirmación o mostrar mensaje
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }


}
