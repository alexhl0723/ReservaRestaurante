package servlet;

import java.io.IOException;
import java.util.List;

import dao.DAOFactory;
import entidades.Reserva;
import entidades.Usuario;
import interfaces.UsuarioCuentaInterface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminCuenta
 */
@WebServlet("/AdminCuenta")
public class AdminCuenta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCuenta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("UsuarioActual");

        if (usuario == null || !"ADMIN".equals(usuario.getRol())) {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            UsuarioCuentaInterface dao = daoFactory.getCuentaDAO();

            // Agregar más logs
            System.out.println("Iniciando obtención de reservas...");
            List<Reserva> reservas = dao.obtenerTodasLasReservas();
            System.out.println("Reservas obtenidas: " + reservas.size());

            request.setAttribute("reservas", reservas);
            
            // Verificar que las reservas estén en el request
            List<Reserva> reservasEnRequest = (List<Reserva>)request.getAttribute("reservas");
            System.out.println("Reservas en request antes de forward: " + 
                             (reservasEnRequest != null ? reservasEnRequest.size() : "null"));

            request.getRequestDispatcher("/PanelAdmin.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println("Error en AdminPanelServlet: ");
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

}
