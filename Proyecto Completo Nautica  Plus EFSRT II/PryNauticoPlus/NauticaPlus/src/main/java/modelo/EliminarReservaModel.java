package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bd.MySQLConexion;
import entidades.Reserva;
import interfaces.EliminarReservaInterface;

public class EliminarReservaModel implements EliminarReservaInterface{

	@Override
	public boolean eliminarReserva(String idReserva) {
		Connection con = null;
        PreparedStatement pstm = null;
        boolean eliminado = false;

        try {
            con = MySQLConexion.getConexion();
            String sql = "DELETE FROM reserva WHERE idReserva=?";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, idReserva);

            int filasAfectadas = pstm.executeUpdate();
            eliminado = filasAfectadas > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) pstm.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return eliminado;
	}

	@Override
	public Reserva obtenerReservaPorId(String idReserva) {
		Connection con = null;
	    PreparedStatement pstm = null;
	    ResultSet rs = null;
	    Reserva reserva = null;
	    
	    try {
	        con = MySQLConexion.getConexion();
	        String sql = "SELECT * FROM Reserva WHERE idReserva = ?";
	        pstm = con.prepareStatement(sql);
	        pstm.setString(1, idReserva);
	        rs = pstm.executeQuery();
	        
	        if (rs.next()) {
	            reserva = new Reserva();
	            reserva.setIdReserva(rs.getString("idReserva"));
	            reserva.setIdMesa(rs.getString("idMesa"));
	            reserva.setIdUsuario(rs.getString("idUsuario"));
	            reserva.setFecha(rs.getString("fecha"));
	            reserva.setHora(rs.getString("hora"));
	            reserva.setEstado(rs.getString("estado"));
	            reserva.setNumeroPersonas(rs.getString("numeroPersonas"));
	            reserva.setObservaciones(rs.getString("observaciones"));
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstm != null) pstm.close();
	            if (con != null) con.close();
	        } catch (Exception e2) {
	            e2.printStackTrace();
	        }
	    }
	    return reserva;
	}

}
