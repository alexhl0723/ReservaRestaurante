package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bd.MySQLConexion;
import entidades.Usuario;
import interfaces.LoginInterface;

public class LoginModel implements LoginInterface{

	@Override
	public Usuario verificarInicioSesion(String email, String password) {
		Usuario usuario = null;
	    Connection con = null;
	    PreparedStatement pstm = null;
	    ResultSet rs = null;
	    try {
	        con = MySQLConexion.getConexion();
	        String sql = "SELECT * FROM Usuario WHERE email = ? AND password = ? AND estado = true";
	        pstm = con.prepareStatement(sql);
	        pstm.setString(1, email);
	        pstm.setString(2, password);  // Recuerda implementar encriptación
	        rs = pstm.executeQuery();
	        
	        if(rs.next()) {
	            usuario = new Usuario();
	            usuario.setIdUsuario(rs.getString("idUsuario"));
	            usuario.setNombre(rs.getString("nombre"));
	            usuario.setApellidoPaterno(rs.getString("apellidoPaterno"));
	            usuario.setApellidoMaterno(rs.getString("apellidoMaterno"));
	            usuario.setEmail(rs.getString("email"));
	            usuario.setTelefono(rs.getString("telefono"));
	            usuario.setRol(rs.getString("rol"));
	            usuario.setEstado(rs.getString("estado"));
	        }
	    } catch(Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if(rs != null) rs.close();
	            if(pstm != null) pstm.close();
	            if(con != null) con.close();
	        } catch(Exception e) {
	            e.printStackTrace();
	        }
	        }
		return usuario;
	    }
}
