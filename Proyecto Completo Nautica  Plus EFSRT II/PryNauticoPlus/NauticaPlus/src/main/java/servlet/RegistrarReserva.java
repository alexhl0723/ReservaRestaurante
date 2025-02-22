package servlet;

import java.io.IOException;

import entidades.Mesa;
import entidades.Reserva;
import entidades.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import modelo.BuscarMesaModel;
import modelo.RegistroReservaModel;

@WebServlet("/RegistrarReserva")
public class RegistrarReserva extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            Usuario usuario = (Usuario) session.getAttribute("UsuarioActual");

            if (usuario == null) {
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                return;
            }

            String idUsuario = usuario.getIdUsuario();

            String fecha = request.getParameter("fecha");
            String hora = request.getParameter("hora");
            String numeroPersonas = request.getParameter("numeroPersonas");
            String observaciones = request.getParameter("observaciones");
            String idMesa = request.getParameter("idMesa");

            // Verificar si la mesa existe y está disponible
            BuscarMesaModel buscarMesaModel = new BuscarMesaModel();
            Mesa mesa = buscarMesaModel.obtenerMesaPorId(idMesa);

            if (mesa == null) {
                request.setAttribute("mensaje", "La mesa seleccionada no existe.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
                return;
            }

            if (!mesa.getEstado().equalsIgnoreCase("DISPONIBLE")) {
                request.setAttribute("mensaje", "La mesa seleccionada no está disponible.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
                return;
            }

            // Crear la reserva
            Reserva reserva = new Reserva();
            reserva.setFecha(fecha);
            reserva.setHora(hora);
            reserva.setNumeroPersonas(numeroPersonas);
            reserva.setEstado("PENDIENTE");
            reserva.setObservaciones(observaciones);
            reserva.setIdUsuario(idUsuario);
            reserva.setIdMesa(idMesa);

            // Registrar la reserva en la BD
            RegistroReservaModel registroReservaModel = new RegistroReservaModel();
            Reserva nuevaReserva = registroReservaModel.registrarReserva(reserva);

            if (nuevaReserva.getIdUsuario() != null) {
                
                session.setAttribute("nuevaReserva", nuevaReserva);
                request.setAttribute("mensaje", "Reserva registrada exitosamente.");
                request.getRequestDispatcher("ConfirmacionRerversa.jsp").forward(request, response);
            } else {
                request.setAttribute("mensaje", "Error al registrar la reserva.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("mensaje", "Ocurrió un error inesperado.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
