package ec.edu.ups.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.ClienteDAO;
import ec.edu.ups.modelo.Cliente;

/**
 * Servlet implementation class Registrar
 */

@WebServlet("/ControladorRegistrar")
public class ControladorRegistrarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControladorRegistrarCliente() {
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

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cedula = request.getParameter("cedula");
		String nombre = request.getParameter("nombre");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");

		ClienteDAO ClienteDAO = DAOFactory.getDAOFactory().getClienteDAO();
		Cliente usu = new Cliente(cedula, nombre, direccion, telefono);
		ClienteDAO.create(usu);
		
		response.sendRedirect("/MatuteCurillo-Jonnathan-Examen/JSPs/RegistrarTicket.jsp");

	}

}
