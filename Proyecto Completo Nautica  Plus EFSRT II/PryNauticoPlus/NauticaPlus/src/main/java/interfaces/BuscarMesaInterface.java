package interfaces;

import entidades.Mesa;

public interface BuscarMesaInterface {
	 Mesa obtenerMesaPorId(String idMesa);
	 boolean actualizarEstadoMesa(String idMesa, String estado);
}
