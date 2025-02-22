package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.DAOFactory;
import entidades.Mesa;
import entidades.Reserva;
import entidades.Usuario;
import interfaces.BuscarMesaInterface;
import interfaces.EliminarReservaInterface;
import interfaces.UsuarioCuentaInterface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class EliminarReservaServlet
 */
@WebServlet("/EliminarReservaServlet")
public class EliminarReservaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("\n=== INICIO SERVLET ELIMINAR RESERVA ===");
        
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("UsuarioActual");
        
        if (usuario == null) {
            System.out.println("ERROR: Usuario no encontrado en sesión");
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return;
        }

        String idReserva = request.getParameter("idReserva");
        if (idReserva == null || idReserva.trim().isEmpty()) {
            System.out.println("ERROR: ID de reserva no válido");
            request.setAttribute("mensaje", "ID de reserva no válido.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        try {
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            EliminarReservaInterface dao = daoFactory.getEliminarReservaDAO();
            
            // Obtener la reserva antes de eliminarla
            Reserva reserva = dao.obtenerReservaPorId(idReserva);
            
            if (reserva == null) {
                System.out.println("ERROR: La reserva no existe.");
                request.setAttribute("mensaje", "La reserva no fue encontrada.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
                return;
            }

            String idMesaReserva = reserva.getIdMesa();  // Ahora obtenemos correctamente el idMesa
            
            if (idMesaReserva != null) {
                // Obtener la mesa para verificar que existe
                BuscarMesaInterface mesaDao = daoFactory.getMesaDAO();
                Mesa mesa = mesaDao.obtenerMesaPorId(idMesaReserva);
                
                if (mesa != null) {
                    // Actualizar el estado de la mesa a DISPONIBLE
                    boolean mesaActualizada = mesaDao.actualizarEstadoMesa(idMesaReserva, "DISPONIBLE");
                    
                    if (!mesaActualizada) {
                        System.out.println("ERROR: No se pudo actualizar el estado de la mesa");
                        request.setAttribute("mensaje", "Error al actualizar el estado de la mesa.");
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                        return;
                    }
                }
            }
            
            // Ahora eliminar la reserva
            boolean eliminado = dao.eliminarReserva(idReserva);
            
            if (eliminado) {
                System.out.println("Reserva eliminada y mesa actualizada exitosamente");
                
                // Actualizar la lista de reservas en la sesión
                UsuarioCuentaInterface cuentaDao = daoFactory.getCuentaDAO();
                int idUsuario = Integer.parseInt(usuario.getIdUsuario());
                List<Reserva> reservasActualizadas = cuentaDao.obtenerReservasPorUsuario(idUsuario);
                
                if (reservasActualizadas == null) {
                    reservasActualizadas = new ArrayList<>();
                }
                
                session.setAttribute("reservas", reservasActualizadas);
                request.setAttribute("reservas", reservasActualizadas);
                
                response.sendRedirect("EliminarReserva.jsp");
            } else {
                System.out.println("ERROR: No se pudo eliminar la reserva");
                request.setAttribute("mensaje", "No se pudo cancelar la reserva.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            e.printStackTrace();
            request.setAttribute("mensaje", "Error al procesar la solicitud.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
