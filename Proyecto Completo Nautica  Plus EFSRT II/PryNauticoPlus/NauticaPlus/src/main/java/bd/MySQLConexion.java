package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConexion {
    public static Connection getConexion() {
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/DB_RESERVA_RESTAURANTE?useSSL=false&useTimezone=true&serverTimezone=UTC";
        String usuario = "root";
        String password = "2hj578$%Mfkj";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            con = DriverManager.getConnection(url, usuario, password);
            System.out.println("\n=====================================");
            System.out.println(" ✅ CONEXIÓN EXITOSA A LA BASE DE DATOS ");
            System.out.println("=====================================\n");
        } catch (ClassNotFoundException e) {
            System.out.println("\n=====================================");
            System.out.println(" ❌ ERROR: Controlador JDBC no encontrado.");
            System.out.println(" ➜ Verifique que el driver MySQL está correctamente instalado.");
            System.out.println(" Detalles: " + e.getMessage());
            System.out.println("=====================================\n");
        } catch (SQLException e) {
            System.out.println("\n=====================================");
            System.out.println(" ❌ ERROR: Fallo en la conexión a la base de datos.");
            System.out.println(" ➜ Verifique la URL, usuario y contraseña.");
            System.out.println(" ➜ Código de error: " + e.getErrorCode());
            System.out.println(" ➜ SQLState: " + e.getSQLState());
            System.out.println(" Detalles: " + e.getMessage());
            System.out.println("=====================================\n");
        } catch (Exception e) {
            System.out.println("\n=====================================");
            System.out.println(" ❌ ERROR: Ocurrió un problema inesperado.");
            System.out.println(" ➜ Contacte al administrador del sistema.");
            System.out.println(" Detalles: " + e.getMessage());
            System.out.println("=====================================\n");
        }
        return con;
    }
}
