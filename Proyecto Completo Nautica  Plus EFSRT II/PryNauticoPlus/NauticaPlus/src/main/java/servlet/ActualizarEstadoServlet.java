package servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import dao.DAOFactory;
import entidades.Reserva;
import interfaces.UsuarioCuentaInterface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ActualizarEstadoServlet
 */
@WebServlet("/ActualizarEstadoServlet")
public class ActualizarEstadoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ActualizarEstadoServlet() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String idReservaStr = request.getParameter("idReserva");
        String nuevoEstado = request.getParameter("estado");
        
        if (idReservaStr == null || nuevoEstado == null) {
            request.setAttribute("mensaje", "Error: Datos inválidos.");
            redirigirPanelAdmin(request, response);
            return;
        }
        
        try {
            int idReserva = Integer.parseInt(idReservaStr);
            
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            UsuarioCuentaInterface cuentaDAO = daoFactory.getCuentaDAO();
            
            boolean actualizado = cuentaDAO.actualizarEstadoReserva(idReserva, nuevoEstado);
            
            if (actualizado) {
                request.setAttribute("mensaje", "Estado actualizado correctamente.");
                
                // Notificar al usuario
                if ("CONFIRMADA".equalsIgnoreCase(nuevoEstado) || 
                    "CANCELADA".equalsIgnoreCase(nuevoEstado)) {
                    notificarCambioEstado(cuentaDAO, idReserva, nuevoEstado);
                }
            } else {
                request.setAttribute("mensaje", "Error: No se pudo actualizar el estado.");
            }
            
            // Actualizar lista de reservas
            List<Reserva> reservas = cuentaDAO.obtenerTodasLasReservas();
            request.setAttribute("reservas", reservas);
            
        } catch (Exception e) {
            request.setAttribute("mensaje", "Error: " + e.getMessage());
        }
        
        redirigirPanelAdmin(request, response);
    }

    private void redirigirPanelAdmin(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("PanelAdmin.jsp").forward(request, response);
    }
    
    private void notificarCambioEstado(UsuarioCuentaInterface cuentaDAO, int idReserva, String nuevoEstado) {
        List<Reserva> reservas = cuentaDAO.obtenerReservasPorUsuario(idReserva);
        if (reservas != null && !reservas.isEmpty()) {
            Reserva reserva = reservas.get(0);
            String idUsuario = reserva.getIdUsuario();
            if (idUsuario != null) {
                String mensaje = "Tu reserva con ID " + idReserva + " ha sido " + nuevoEstado.toLowerCase() + ".";
                cuentaDAO.guardarNotificacion(idUsuario, mensaje);
            }
        }
    }
}
