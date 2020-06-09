package ec.edu.ups.dao;

public abstract class DAOFactory {
    protected static DAOFactory factory = new JPADAOFactory();
    
    public static DAOFactory getDAOFactory(){return factory;}
   
    
    public abstract ClienteDAO getClienteDAO();
    
    public abstract VehiculoDAO getVehiculoDAO();
    
    public abstract TicketDAO getTicketDAO();
}
