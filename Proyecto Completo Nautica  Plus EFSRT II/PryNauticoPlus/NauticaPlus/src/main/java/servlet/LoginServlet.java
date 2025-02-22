package servlet;
import java.io.IOException;
import dao.DAOFactory;
import entidades.Usuario;
import interfaces.LoginInterface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet", "/login"})
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            String type = request.getParameter("type");
            if(type == null) {
                setErrorAndForward(request, response, "La solicitud es invalida");
                return;
            }
            String email = request.getParameter("txtEmail");
            String password = request.getParameter("txtPassword");
            
            if(email == null || email.trim().isEmpty() || 
               password == null || password.trim().isEmpty()) {
                setErrorAndForward(request, response, "Los campos son obligatorios");
                return;
            }
            
            DAOFactory daoFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
            LoginInterface dao = daoFactory.getLoginDAO();
            Usuario usuario = dao.verificarInicioSesion(email, password);
            
            if(usuario != null) {
                HttpSession session = request.getSession();
                session.setAttribute("UsuarioActual", usuario);
                
                String rol = usuario.getRol().toLowerCase();
                switch(rol) {
                    case "user":
                        // Modificación aquí: redirigir al servlet UsuarioCuenta en lugar de index.jsp
                        response.sendRedirect(request.getContextPath() + "/UsuarioCuenta");
                        break;
                    case "admin":
                    	response.sendRedirect(request.getContextPath() + "/AdminCuenta");
                        break;
                    default:
                        setErrorAndForward(request, response, "Rol no reconocido");
                }
            } else {
                setErrorAndForward(request, response, "Credenciales incorrectas o usuario inactivo");
            }
        } catch (Exception e) {
            e.printStackTrace();
            setErrorAndForward(request, response, "Error interno del servidor: " + e.getMessage());
        }
    }
    
    private void setErrorAndForward(HttpServletRequest request, 
                                  HttpServletResponse response, 
                                  String mensaje) 
            throws ServletException, IOException {
        request.setAttribute("mensaje", mensaje);
        request.getRequestDispatcher("/Login.jsp").forward(request, response);
    }
}