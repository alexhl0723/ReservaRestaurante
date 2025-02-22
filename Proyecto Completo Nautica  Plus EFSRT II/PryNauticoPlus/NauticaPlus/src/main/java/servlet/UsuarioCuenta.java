package servlet;

import java.io.IOException;
import java.util.ArrayList;
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

@WebServlet("/UsuarioCuenta")
public class UsuarioCuenta extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public UsuarioCuenta() {
        super();
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("\n=== INICIO SERVLET USUARIOCUENTA ===");
        
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("UsuarioActual");
        
        if (usuario == null) {
            System.out.println("ERROR: UsuarioActual en sesión es NULL");
            response.sendRedirect("login.jsp");
            return;
        }
        
        System.out.println("Usuario en sesión - ID: " + usuario.getIdUsuario());
        
        try {
            int idUsuario = Integer.parseInt(usuario.getIdUsuario());
            System.out.println("ID convertido a int: " + idUsuario);
            
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            UsuarioCuentaInterface dao = daoFactory.getCuentaDAO();
            System.out.println("DAO obtenido: " + (dao != null ? "SI" : "NO"));
            
            List<Reserva> reservas = dao.obtenerReservasPorUsuario(idUsuario);
            if (reservas == null) {
                System.out.println("El DAO devolvió null, se asigna una lista vacía.");
                reservas = new ArrayList<>();
            }
            System.out.println("Reservas obtenidas en servlet: " + reservas.size());
            
            // Usar tanto session como request para mayor seguridad
            session.setAttribute("reservas", reservas);
            request.setAttribute("reservas", reservas);
            
            // Verificación inmediata
            List<Reserva> checkReservas = (List<Reserva>) session.getAttribute("reservas");
            System.out.println("Verificación inmediata - Reservas en sesión: " + 
                (checkReservas != null ? checkReservas.size() : "null"));
            
            System.out.println("Redirigiendo a PanelUsuario.jsp");
            request.getRequestDispatcher("/PanelUsuario.jsp").forward(request, response);
            
        } catch (Exception e) {
            System.out.println("ERROR EN SERVLET: " + e.getMessage());
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
  

    }}