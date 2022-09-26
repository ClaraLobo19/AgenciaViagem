package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ClienteLogin;
import model.ClienteLoginDAO;


/**
 * Servlet implementation class AlterarClienteServlet
 */
@WebServlet("/AlterarClienteServlet")
public class AlterarClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idCliente = Integer.parseInt(request.getParameter("id"));
		ClienteLoginDAO cliente= new ClienteLoginDAO();
		ClienteLogin clienteSelecionado = cliente.getContatoById(idCliente);
		
		request.setAttribute("contato",clienteSelecionado );
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
