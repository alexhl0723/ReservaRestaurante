package dao;

import interfaces.BuscarMesaInterface;
import interfaces.EliminarReservaInterface;
import interfaces.LoginInterface;
import interfaces.RegistroInterface;
import interfaces.RegistroReservaInterface;
import interfaces.UsuarioCuentaInterface;

//import interfaces.AutenticarInterface;

public abstract class DAOFactory {
	public static final int MYSQL=1;
	public static final int SQLSERVER=2;
	public static final int ORACLE=3;
	
	public abstract LoginInterface getLoginDAO();
	public abstract RegistroInterface getRegistroDAO();
	public abstract RegistroReservaInterface getRegistroReservaDAO();
	public abstract BuscarMesaInterface getMesaDAO();
	public abstract UsuarioCuentaInterface getCuentaDAO();
	public abstract EliminarReservaInterface getEliminarReservaDAO();
	
	public static DAOFactory getDAOFactory(int tipo) {
		switch(tipo) {
		case MYSQL: return new MySQLDAOFactory();
		case SQLSERVER: return null;
		case ORACLE: return null;
		default: return null;
		}
	}
}
