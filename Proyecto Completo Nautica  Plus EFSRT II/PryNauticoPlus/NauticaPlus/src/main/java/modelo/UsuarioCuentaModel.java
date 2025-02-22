package modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import bd.MySQLConexion;
import entidades.Reserva;
import entidades.Usuario;
import interfaces.UsuarioCuentaInterface;

public class UsuarioCuentaModel implements UsuarioCuentaInterface {
    
    @Override
    public List<Reserva> obtenerReservasPorUsuario(int idUsuario) {
        System.out.println("\n=== INICIO CONSULTA DE RESERVAS CON PROCEDIMIENTO ALMACENADO ===");
        System.out.println("Buscando reservas para ID: " + idUsuario);
        
        Connection con = null;
        CallableStatement cstm = null;
        ResultSet rs = null;
        List<Reserva> reservas = new ArrayList<>();
        
        try {
            con = MySQLConexion.getConexion();
            System.out.println("Conexión obtenida: " + (con != null ? "SI" : "NO"));
            
            String sql = "{CALL sp_ObtenerReservasPorUsuario(?)}";
            cstm = con.prepareCall(sql);
            cstm.setInt(1, idUsuario);
            
            rs = cstm.executeQuery();
            System.out.println("Procedimiento almacenado ejecutado");
            
            int contador = 0;
            while (rs.next()) {
                contador++;
                Reserva reserva = new Reserva();
                reserva.setIdReserva(rs.getString("idReserva"));
                reserva.setFecha(rs.getString("fecha"));
                reserva.setHora(rs.getString("hora"));
                reserva.setNumeroPersonas(rs.getString("numeroPersonas"));
                reserva.setEstado(rs.getString("estado"));
                reserva.setObservaciones(rs.getString("observaciones"));
                reserva.setIdUsuario(String.valueOf(idUsuario));
                reserva.setIdMesa(rs.getString("numero_mesa"));
                
                reservas.add(reserva);
                System.out.println("Reserva " + contador + " agregada - ID: " + reserva.getIdReserva());
            }
            
            System.out.println("Total de reservas encontradas: " + reservas.size());
            System.out.println("Reservas antes de retornar: " + reservas.toString());
            
        } catch (Exception e) {
            System.out.println("ERROR EN DAO: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (cstm != null) cstm.close();
                if (con != null) con.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones: " + e.getMessage());
            }
        }
        
        return reservas;
    }


    @Override
    public Usuario modificarUsuarioInfoPorId(String nombre, String apellidoPaterno, String apellidoMaterno, 
                                           String email, String telefono, String idUsuario) {
        Connection con = null;
        PreparedStatement pstm = null;
        Usuario usuarioModificado = null;
        
        try {
            con = MySQLConexion.getConexion();
            String sql = "UPDATE usuario SET nombre=?, apellidoPaterno=?, apellidoMaterno=?, " +
                        "email=?, telefono=? WHERE idUsuario=?";
            
            pstm = con.prepareStatement(sql);
            pstm.setString(1, nombre);
            pstm.setString(2, apellidoPaterno);
            pstm.setString(3, apellidoMaterno);
            pstm.setString(4, email);
            pstm.setString(5, telefono);
            pstm.setString(6, idUsuario);
            
            int filasAfectadas = pstm.executeUpdate();
            
            if (filasAfectadas > 0) {
                // Si la actualización fue exitosa, recuperamos los datos actualizados
                usuarioModificado = new Usuario();
                usuarioModificado.setIdUsuario(idUsuario);
                usuarioModificado.setNombre(nombre);
                usuarioModificado.setApellidoPaterno(apellidoPaterno);
                usuarioModificado.setApellidoMaterno(apellidoMaterno);
                usuarioModificado.setEmail(email);
                usuarioModificado.setTelefono(telefono);
                // Nota: Mantener otros campos como rol, estado, etc.
            }
            
        } catch (Exception e) {
            System.out.println("Error al modificar usuario: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) pstm.close();
                if (con != null) con.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones: " + e.getMessage());
            }
        }
        
        return usuarioModificado;
    }

    @Override
    public boolean modificarContraPorAnterior(String idUsuario, String passwordActual, String nuevaPassword) {
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        boolean exito = false;

        try {
            con = MySQLConexion.getConexion();

            // 1. Verificar si la contraseña actual es correcta
            String sqlVerificar = "SELECT idUsuario FROM usuario WHERE idUsuario=? AND password=?";
            pstm = con.prepareStatement(sqlVerificar);
            pstm.setString(1, idUsuario);
            pstm.setString(2, passwordActual); // ⚠ Aquí se compara directamente la contraseña (no es seguro)

            rs = pstm.executeQuery();

            if (rs.next()) { 
                // 2. Si la contraseña es correcta, actualizar con la nueva contraseña
                rs.close();
                pstm.close();

                String sqlUpdate = "UPDATE usuario SET password=? WHERE idUsuario=?";
                pstm = con.prepareStatement(sqlUpdate);
                pstm.setString(1, nuevaPassword);  // Aquí se guarda en texto plano (NO RECOMENDADO)
                pstm.setString(2, idUsuario);

                int filasAfectadas = pstm.executeUpdate();
                exito = filasAfectadas > 0;
            }

        } catch (Exception e) {
            System.out.println("Error al modificar contraseña: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstm != null) pstm.close();
                if (con != null) con.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones: " + e.getMessage());
            }
        }

        return exito;
    }
    
    @Override
    public List<Reserva> obtenerTodasLasReservas() {
        List<Reserva> reservas = new ArrayList<>();
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            // Log de inicio
            System.out.println("=== Iniciando obtención de reservas ===");

            // Verificar conexión
            cn = MySQLConexion.getConexion();
            System.out.println("Estado de conexión: " + (cn != null ? "EXITOSA" : "FALLIDA"));

            // Verificar cantidad de reservas en la BD
            String testSql = "SELECT COUNT(*) as total FROM Reserva";
            ps = cn.prepareStatement(testSql);
            rs = ps.executeQuery();

            if (rs.next()) {
                System.out.println("Total de reservas en la base de datos según COUNT: " + rs.getInt("total"));
            }

            // Cerrar el ResultSet de prueba
            rs.close();
            ps.close();

            // Consulta principal corregida
            String sql = "SELECT r.idReserva, r.fecha, r.hora, r.numeroPersonas, r.estado, r.observaciones, " +
                         "u.idUsuario, COALESCE(u.nombre, 'Desconocido') AS nombreUsuario " +
                         "FROM Reserva r " +
                         "LEFT JOIN Usuario u ON r.idUsuario = u.idUsuario " +
                         "ORDER BY r.fecha DESC, r.hora DESC";

            System.out.println("\nEjecutando consulta principal:");
            System.out.println(sql);

            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();

            // Depuración: Información de columnas
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            System.out.println("\nInformación de columnas encontradas (" + columnCount + " columnas):");
            for (int i = 1; i <= columnCount; i++) {
                System.out.println("Columna " + i + ": " +
                                   "Nombre=" + metaData.getColumnName(i) + ", " +
                                   "Tipo=" + metaData.getColumnTypeName(i));
            }

            System.out.println("\nIniciando lectura de filas:");
            int rowCount = 0;

            while (rs.next()) {
                rowCount++;
                System.out.println("\n=== Procesando fila " + rowCount + " ===");

                // Crear nueva reserva
                Reserva reserva = new Reserva();

                try {
                    reserva.setIdReserva(rs.getString("idReserva"));
                    reserva.setFecha(rs.getString("fecha"));
                    reserva.setHora(rs.getString("hora"));
                    reserva.setNumeroPersonas(rs.getString("numeroPersonas"));
                    reserva.setEstado(rs.getString("estado"));
                    reserva.setIdUsuario(rs.getString("idUsuario"));
                    reserva.setObservaciones(rs.getString("nombreUsuario")); // Nombre del usuario en observaciones

                    // Debug: Mostrar valores obtenidos
                    System.out.println("ID Reserva: " + reserva.getIdReserva());
                    System.out.println("Fecha: " + reserva.getFecha());
                    System.out.println("Hora: " + reserva.getHora());
                    System.out.println("Personas: " + reserva.getNumeroPersonas());
                    System.out.println("Estado: " + reserva.getEstado());
                    System.out.println("ID Usuario: " + reserva.getIdUsuario());
                    System.out.println("Nombre Usuario: " + reserva.getObservaciones());
                } catch (Exception e) {
                    System.out.println("Error al procesar la reserva: " + e.getMessage());
                    e.printStackTrace();
                }

                // Agregar la reserva a la lista
                reservas.add(reserva);
                System.out.println("Reserva agregada exitosamente a la lista");
            }

            System.out.println("\n=== Resumen de la operación ===");
            System.out.println("Filas procesadas: " + rowCount);
            System.out.println("Reservas en la lista: " + reservas.size());

        } catch (Exception e) {
            System.out.println("\n=== ERROR GENERAL ===");
            System.out.println("Tipo de error: " + e.getClass().getName());
            System.out.println("Mensaje: " + e.getMessage());
            e.printStackTrace();
        } finally {
            System.out.println("\n=== Cerrando recursos ===");
            try {
                if (rs != null) {
                    rs.close();
                    System.out.println("ResultSet cerrado");
                }
                if (ps != null) {
                    ps.close();
                    System.out.println("PreparedStatement cerrado");
                }
                if (cn != null) {
                    cn.close();
                    System.out.println("Conexión cerrada");
                }
            } catch (Exception e2) {
                System.out.println("Error al cerrar conexiones: " + e2.getMessage());
            }
        }

        return reservas;
    }


    
    @Override
    public boolean actualizarEstadoReserva(int idReserva, String nuevoEstado) {
        Connection cn = null;
        PreparedStatement ps = null;
        boolean actualizado = false;

        try {
            // Validar el estado antes de ejecutar la consulta
            List<String> estadosPermitidos = Arrays.asList("PENDIENTE", "CONFIRMADA", "CANCELADA");
            if (!estadosPermitidos.contains(nuevoEstado.toUpperCase())) {
                System.out.println("Error: Estado no válido - " + nuevoEstado);
                return false;
            }

            cn = MySQLConexion.getConexion();
            cn.setAutoCommit(false); // Inicia una transacción

            String sql = "UPDATE Reserva SET estado = ? WHERE idReserva = ?";
            ps = cn.prepareStatement(sql);
            ps.setString(1, nuevoEstado.toUpperCase());
            ps.setInt(2, idReserva);

            int filasActualizadas = ps.executeUpdate();
            if (filasActualizadas > 0) {
                actualizado = true;
                cn.commit(); // Confirma la transacción si la actualización es exitosa
                System.out.println("Estado actualizado correctamente para la reserva " + idReserva);
            } else {
                cn.rollback(); // Revierte cambios si no se actualizó nada
                System.out.println("No se encontró la reserva con ID " + idReserva);
            }

        } catch (Exception e) {
            System.out.println("Error al actualizar estado de reserva: " + e.getMessage());
            try {
                if (cn != null) cn.rollback(); // Revierte cambios en caso de error
            } catch (Exception e2) {
                System.out.println("Error al hacer rollback: " + e2.getMessage());
            }
        } finally {
            // Cierre de recursos
            try {
                if (ps != null) ps.close();
                if (cn != null) cn.close();
            } catch (Exception e2) {
                System.out.println("Error al cerrar conexiones: " + e2.getMessage());
            }
        }

        return actualizado;
    }
    
    @Override
    public Usuario obtenerUsuarioPorId(String idUsuario) {
        Usuario usuario = null;
        String sql = "SELECT * FROM usuarios WHERE id_usuario = ?";
        
        try (Connection conn = MySQLConexion.getConexion();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, idUsuario);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                usuario = new Usuario();
                usuario.setIdUsuario(rs.getString("id_usuario"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return usuario;
    }
    
    @Override
    public void guardarNotificacion(String idUsuario, String mensaje) {
        if (idUsuario == null || idUsuario.trim().isEmpty()) {
            System.out.println("⚠️ Error: idUsuario es nulo o vacío.");
            return;
        }

        System.out.println("📌 Intentando insertar notificación:");
        System.out.println(" - ID Usuario: " + idUsuario);
        System.out.println(" - Mensaje: " + mensaje);

        String sql = "INSERT INTO Notificaciones (idUsuario, mensaje, fecha) VALUES (?, ?, NOW())";

        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {

            // Convertir el idUsuario de String a Integer
            int userId = Integer.parseInt(idUsuario);
            ps.setInt(1, userId);  // Cambiar a setInt ya que la columna es INT
            ps.setString(2, mensaje);

            int filasAfectadas = ps.executeUpdate();
            System.out.println("✅ Notificación insertada. Filas afectadas: " + filasAfectadas);

        } catch (NumberFormatException e) {
            System.out.println("❌ Error: El ID de usuario no es un número válido");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("❌ Error SQL: " + e.getMessage());
            e.printStackTrace();
        }
    }



	
}