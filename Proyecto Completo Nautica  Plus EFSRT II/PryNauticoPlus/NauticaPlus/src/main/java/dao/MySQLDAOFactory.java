package dao;

import interfaces.BuscarMesaInterface;
import interfaces.EliminarReservaInterface;
import interfaces.LoginInterface;
import interfaces.RegistroInterface;
import interfaces.RegistroReservaInterface;
import interfaces.UsuarioCuentaInterface;
import modelo.BuscarMesaModel;
import modelo.EliminarReservaModel;
import modelo.LoginModel;
import modelo.RegistroModel;
import modelo.RegistroReservaModel;
import modelo.UsuarioCuentaModel;

public class MySQLDAOFactory extends DAOFactory {
	
	@Override
	public LoginInterface getLoginDAO() {
		return new LoginModel();
	}

	@Override
	public RegistroInterface getRegistroDAO() {
		return new RegistroModel();
	}
	
	@Override
	public RegistroReservaInterface getRegistroReservaDAO() {
		return new RegistroReservaModel();
	}
	
	@Override
	public BuscarMesaInterface getMesaDAO() {
		return new BuscarMesaModel();
	}
	
	@Override	
	public UsuarioCuentaInterface getCuentaDAO(){
		return new UsuarioCuentaModel(); 
	}
	
	@Override
	public EliminarReservaInterface getEliminarReservaDAO() {
		return new EliminarReservaModel();
	}
	
}
