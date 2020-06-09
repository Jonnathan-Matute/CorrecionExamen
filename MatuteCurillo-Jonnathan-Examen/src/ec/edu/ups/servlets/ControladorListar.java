package ec.edu.ups.servlets;

import java.util.List;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.edu.ups.dao.ClienteDAO;
import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.VehiculoDAO;
import ec.edu.ups.modelo.Cliente;
import ec.edu.ups.modelo.Vehiculo;

/**
 * Servlet implementation class Listar
 */
@WebServlet("/Listar")
public class ControladorListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorListar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String cedula = request.getParameter("cedula");
         String placa = request.getParameter("placa");
         
         System.out.println(cedula + " " + " " + placa);
         
         if(cedula != null && placa !=null) {
         ClienteDAO clienteDao = DAOFactory.getDAOFactory().getClienteDAO();
   
         Cliente cliente = clienteDao.findById(cedula);
       
         VehiculoDAO vehiculoDao = DAOFactory.getDAOFactory().getVehiculoDAO();
         List<Vehiculo> vehiculos = vehiculoDao.findBycedulaOrPlaca(cedula, placa);
   
         cliente.setVehiculos(vehiculos);
         request.setAttribute("clientes", cliente);
         }
         getServletContext().getRequestDispatcher("/JSPs/BuscarTicket.jsp").forward(request, response);
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
