package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bd.MySQLConexion;
import entidades.Usuario;
import interfaces.RegistroInterface;

public class RegistroModel implements RegistroInterface {

	@Override
	public Usuario registrarCuenta(Usuario usuario) {
		Connection con = null;
	    PreparedStatement pstm = null;
	    ResultSet rs = null;
	    try {
	        con = MySQLConexion.getConexion();
	        // Especificamos los nombres de las columnas
	        String sql = "INSERT INTO Usuario (nombre, apellidoPaterno, apellidoMaterno, email, password, telefono) VALUES (?,?,?,?,?,?)";
	        pstm = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

	        // Establecer los parámetros de la consultaw
	        pstm.setString(1, usuario.getNombre());
	        pstm.setString(2, usuario.getApellidoPaterno());
	        pstm.setString(3, usuario.getApellidoMaterno());
	        pstm.setString(4, usuario.getEmail());
	        pstm.setString(5, usuario.getPassword());
	        pstm.setString(6, usuario.getTelefono());

	        int affectedRows = pstm.executeUpdate();

	        // Verificar si se insertó correctamente
	        if (affectedRows > 0) {
	            rs = pstm.getGeneratedKeys();
	            if (rs.next()) {
	                usuario.setIdUsuario(rs.getString(1));
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstm != null) pstm.close();
	            if (con != null) con.close();
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	        }
	    }
	    return usuario;
	    }

}
