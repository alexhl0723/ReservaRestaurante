package interfaces;

import entidades.Usuario;

public interface LoginInterface {
	Usuario verificarInicioSesion(String email, String password);
}
