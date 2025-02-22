package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import bd.MySQLConexion;
import entidades.Reserva;
import interfaces.RegistroReservaInterface;

public class RegistroReservaModel implements RegistroReservaInterface {

    @Override
    public Reserva registrarReserva(Reserva reserva) {
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {
            con = MySQLConexion.getConexion();
            
            // Verificar la capacidad de la mesa seleccionada
            String checkMesa = "SELECT capacidad FROM Mesa WHERE idMesa = ? AND estado = 'DISPONIBLE'";
            pstm = con.prepareStatement(checkMesa);
            pstm.setString(1, reserva.getIdMesa());
            rs = pstm.executeQuery();
            
            if (rs.next()) {
                int capacidadMesa = rs.getInt("capacidad");
                int numPersonas = Integer.parseInt(reserva.getNumeroPersonas());
                
                if (numPersonas > capacidadMesa) {
                    System.out.println("La mesa seleccionada no tiene capacidad suficiente.");
                    return null;
                }
            } else {
                System.out.println("Mesa no disponible.");
                return null;
            }
            
         // Ejemplo de inserción en RegistroReservaModel
            String sql = "INSERT INTO Reserva(fecha, hora, numeroPersonas, estado, observaciones, idUsuario, idMesa) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pstm = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            // Setear los parámetros...
            pstm.setString(1, reserva.getFecha());
            pstm.setString(2, reserva.getHora());
            pstm.setString(3, reserva.getNumeroPersonas());
            pstm.setString(4, reserva.getEstado());
            pstm.setString(5, reserva.getObservaciones());
            pstm.setString(6, reserva.getIdUsuario());
            pstm.setString(7, reserva.getIdMesa());

            int filasAfectadas = pstm.executeUpdate();

            if (filasAfectadas > 0) {
                 rs = pstm.getGeneratedKeys();
                if (rs.next()) {
                    // Asignamos el id generado al objeto Reserva
                    reserva.setIdReserva(String.valueOf(rs.getInt(1)));
                }
            }

            
            // Actualizar el estado de la mesa a "RESERVADA"
            String updateMesa = "UPDATE Mesa SET estado = 'RESERVADA' WHERE idMesa = ?";
            pstm = con.prepareStatement(updateMesa);
            pstm.setString(1, reserva.getIdMesa());
            pstm.executeUpdate();
            
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
        return reserva;
    }
}
