package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import dao.DAOFactory;
import entidades.Usuario;
import interfaces.UsuarioCuentaInterface;

/**
 * Servlet implementation class CambiarContraseña
 */
@WebServlet("/CambiarInfoServlet")
public class CambiarInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CambiarInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        Usuario usuarioActual = (Usuario) session.getAttribute("UsuarioActual");

        if (usuarioActual == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        try {
            String telefono = request.getParameter("telefono");
            String email = request.getParameter("email");
            if (telefono == null || telefono.trim().isEmpty()) {
                request.setAttribute("error", "El teléfono no puede estar vacío.");
                request.getRequestDispatcher("/perfil.jsp").forward(request, response);
                return;
            }
            if (email == null || email.trim().isEmpty()) {
                request.setAttribute("error", "El email no puede estar vacío.");
                request.getRequestDispatcher("/perfil.jsp").forward(request, response);
                return;
            }

            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            UsuarioCuentaInterface dao = daoFactory.getCuentaDAO();

            Usuario usuarioModificado = dao.modificarUsuarioInfoPorId(
                usuarioActual.getNombre(),
                usuarioActual.getApellidoPaterno(),
                usuarioActual.getApellidoMaterno(),
                // si no quiere cambiar se pone eso envez de la variable xd usuarioActual.getEmail(),
                email,
                telefono, 
                usuarioActual.getIdUsuario()
            );

            if (usuarioModificado != null) {
                session.setAttribute("UsuarioActual", usuarioModificado);
                request.setAttribute("mensaje", "Perfil actualizado exitosamente");
            } else {
                request.setAttribute("error", "No se pudo actualizar el perfil");
            }

        } catch (Exception e) {
            request.setAttribute("error", "Error al actualizar el perfil: " + e.getMessage());
        }

        request.getRequestDispatcher("/PanelUsuario.jsp").forward(request, response);
    }

}
