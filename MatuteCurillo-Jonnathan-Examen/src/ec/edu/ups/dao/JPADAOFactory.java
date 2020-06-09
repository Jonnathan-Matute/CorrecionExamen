package ec.edu.ups.dao;

import ec.edu.ups.jpa.JPAClienteDAO;
import ec.edu.ups.jpa.JPATicketDAO;
import ec.edu.ups.jpa.JPAVehiculoDAO;

public class JPADAOFactory extends DAOFactory{

	@Override
	public ClienteDAO getClienteDAO() {
		return new JPAClienteDAO();
	}

	@Override
	public VehiculoDAO getVehiculoDAO() {
		return new JPAVehiculoDAO();
	}

	@Override
	public TicketDAO getTicketDAO() {
		return new JPATicketDAO();
	}
    
}
