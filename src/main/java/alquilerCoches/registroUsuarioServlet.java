package alquilerCoches;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.clientesController;

/**
 * Servlet implementation class registroUsuarioServlet
 */
public class registroUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registroUsuarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String dni = request.getParameter("dni");
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		System.out.println("ape "+apellidos);
		int edad = Integer.parseInt(request.getParameter("edad"));
		String email = request.getParameter("email");
		
		if(!dni.equals("") || !nombre.equals("") || !apellidos.equals("") || edad > 17 || !email.equals("")) {
			clientesController cliente = new clientesController();
			cliente.insertCliente(dni, nombre, apellidos, edad, email);
		}else {
			System.out.println("Error en algun dato a la hora de insertar");
		}
	}

}
