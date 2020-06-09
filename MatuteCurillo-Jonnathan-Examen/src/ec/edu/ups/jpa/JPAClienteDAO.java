package ec.edu.ups.jpa;

import ec.edu.ups.dao.ClienteDAO;
import ec.edu.ups.modelo.Cliente;

public class JPAClienteDAO extends JPAGenericDao<Cliente, String> implements ClienteDAO {

	public JPAClienteDAO() {
		super(Cliente.class);
		
	}

}
