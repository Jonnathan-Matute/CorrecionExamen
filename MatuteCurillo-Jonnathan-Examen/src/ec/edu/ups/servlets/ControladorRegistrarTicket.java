package ec.edu.ups.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.edu.ups.dao.ClienteDAO;
import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TicketDAO;
import ec.edu.ups.dao.VehiculoDAO;
import ec.edu.ups.modelo.Cliente;
import ec.edu.ups.modelo.Ticket;
import ec.edu.ups.modelo.Vehiculo;

/**
 * Servlet implementation class ControladorRegistrarTicket
 */
@WebServlet("/ControladorRegistrarTicket")
public class ControladorRegistrarTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControladorRegistrarTicket() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cedula = request.getParameter("cedula");

		String placaVehiculo = request.getParameter("placaVehiculo");
		String marcaVehiculo = request.getParameter("marcaVehiculo");
		String modeloVehiculo = request.getParameter("modeloVehiculo");

		String numeroTicket = request.getParameter("numeroTicket");
		String fechaEntrada = request.getParameter("fechaEntrada");
		String horaEntrada = request.getParameter("horaEntrada");
		String fechaSalida = request.getParameter("fechaSalida");
		String horaSalida = request.getParameter("horaSalida");

		System.out.println(cedula + " " + placaVehiculo + " " + marcaVehiculo + " " + modeloVehiculo + " "
				+ numeroTicket + " " + fechaEntrada + " " + horaEntrada + " " + fechaSalida + " " + horaSalida);

		ClienteDAO clienteDAO = DAOFactory.getDAOFactory().getClienteDAO();
		Cliente cliente = clienteDAO.findById(cedula);
		if (cliente == null) {

		} else {
			Vehiculo vehiculo = new Vehiculo(placaVehiculo, marcaVehiculo, modeloVehiculo, cliente);
			Ticket ticket = new Ticket(Integer.valueOf(numeroTicket), fechaEntrada, fechaSalida, horaEntrada,
					horaSalida, vehiculo);
			vehiculo.setTicket(ticket);
			cliente.addVehiculo(vehiculo);

			TicketDAO ticketDao = DAOFactory.getDAOFactory().getTicketDAO();
			ticketDao.create(ticket);
			ticket.setVehiculo(vehiculo);

			VehiculoDAO vehiculoDao = DAOFactory.getDAOFactory().getVehiculoDAO();
			vehiculoDao.create(vehiculo);
			clienteDAO.update(cliente);
			
			response.sendRedirect("/MatuteCurillo-Jonnathan-Examen/JSPs/BuscarTicket.jsp");

		}
	}

}
