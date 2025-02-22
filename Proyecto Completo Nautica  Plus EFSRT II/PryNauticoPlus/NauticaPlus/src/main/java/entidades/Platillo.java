package entidades;

public class Platillo extends Reserva {
	private String idPlatillo,nombre,cantidad,descripcion,precio,estado;
	//

	public String getIdPlatillo() {
		return idPlatillo;
	}

	public void setIdPlatillo(String idPlatillo) {
		this.idPlatillo = idPlatillo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCantidad() {
		return cantidad;
	}

	public void setCantidad(String cantidad) {
		this.cantidad = cantidad;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
}
