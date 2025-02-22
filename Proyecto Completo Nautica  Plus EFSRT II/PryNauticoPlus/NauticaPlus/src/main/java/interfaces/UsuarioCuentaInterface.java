package interfaces;

import java.util.List;

import entidades.Reserva;
import entidades.Usuario;

public interface UsuarioCuentaInterface {
	 List<Reserva> obtenerReservasPorUsuario(int idUsuario);
	 public Usuario modificarUsuarioInfoPorId(String nombre, String apellidoPaterno, String apellidoMaterno, 
             String email, String telefono, String idUsuario);
	 boolean modificarContraPorAnterior(String idUsuario, String passwordActual, String nuevaPassword);
	 List<Reserva> obtenerTodasLasReservas();
	 boolean actualizarEstadoReserva(int idReserva, String nuevoEstado);
	 Usuario obtenerUsuarioPorId(String idUsuario);
	 void guardarNotificacion(String idUsuario, String mensaje);



}
