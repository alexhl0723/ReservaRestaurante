package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bd.MySQLConexion;
import entidades.Mesa;
import interfaces.BuscarMesaInterface;

public class BuscarMesaModel implements BuscarMesaInterface {
    @Override
    public Mesa obtenerMesaPorId(String idMesa) {
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        Mesa mesa = null;

        try {
            con = MySQLConexion.getConexion();
            String sql = "SELECT idMesa, capacidad, estado FROM Mesa WHERE idMesa = ?";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, idMesa);
            rs = pstm.executeQuery();

            if (rs.next()) {
                mesa = new Mesa();
                mesa.setIdMesa(rs.getString("idMesa"));
                mesa.setCapacidad(rs.getString("capacidad")); // Corregido: antes estaba como String
                mesa.setEstado(rs.getString("estado"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstm != null) pstm.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return mesa;
    }
    public boolean actualizarEstadoMesa(String idMesa, String estado) {
        Connection cn = null;
        PreparedStatement ps = null;
        try {
            cn = MySQLConexion.getConexion();
            String sql = "UPDATE mesa SET estado = ? WHERE idMesa = ?";
            ps = cn.prepareStatement(sql);
            ps.setString(1, estado);
            ps.setString(2, idMesa);
            
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
