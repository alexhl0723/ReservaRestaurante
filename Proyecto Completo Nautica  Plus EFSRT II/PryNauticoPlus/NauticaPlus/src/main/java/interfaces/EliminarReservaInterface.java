package interfaces;

import entidades.Reserva;

public interface EliminarReservaInterface {
	boolean eliminarReserva(String idReserva);
	Reserva obtenerReservaPorId(String idReserva);

}
