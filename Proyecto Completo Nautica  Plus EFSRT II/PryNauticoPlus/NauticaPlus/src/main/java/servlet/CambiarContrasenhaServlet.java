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
 * Servlet implementation class CambiarContrasenha
 */
@WebServlet("/CambiarContrasenhaServlet")
public class CambiarContrasenhaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CambiarContrasenhaServlet() {
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
            response.sendRedirect("login.jsp");
            return;
        }

        String passwordActual = request.getParameter("passwordActual");
        String nuevaPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Validación: las contraseñas nuevas deben coincidir
        if (!nuevaPassword.equals(confirmPassword)) {
            request.setAttribute("error", "Las contraseñas no coinciden");
            request.getRequestDispatcher("UsuarioCuenta").forward(request, response);
            return;
        }

        DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
        UsuarioCuentaInterface dao = daoFactory.getCuentaDAO();

        boolean exito = dao.modificarContraPorAnterior(usuarioActual.getIdUsuario(), passwordActual, nuevaPassword);

        if (exito) {
            request.setAttribute("mensaje", "Contraseña actualizada exitosamente");
        } else {
            request.setAttribute("error", "La contraseña actual es incorrecta");
        }

        request.getRequestDispatcher("UsuarioCuenta").forward(request, response);
    }

}
