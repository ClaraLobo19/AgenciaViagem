package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ClienteLogin;
import model.ClienteLoginDAO;

/**
 * Servlet implementation class InserirClienteServlet
 */
@WebServlet("/InserirCliente")
public class InserirClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// recebendo os dados do formulario via parametro
		String nome = request.getParameter("nome");
		String cpf=request.getParameter("cpf");
		String rg= request.getParameter("rg");
		String email= request.getParameter("email");
		String telefone= request.getParameter("telefone");
		String endereco=request.getParameter("endereco");
		String cidade=request.getParameter("cidade");
		String estado=request.getParameter("estado");
		String senha= request.getParameter("senha");
		
		SimpleDateFormat formato = new SimpleDateFormat("dd/mm/aaaa");// classe para mudar formato
		Date dataNascimento = null;
		try {
		dataNascimento = formato.parse(request.getParameter("dataNascimento"));
		} catch (ParseException e) { e.printStackTrace(); } 
		
		
		//CRIANDO O OBJETO CLIENTElOGIN
		ClienteLogin cliente= new ClienteLogin();
		
		cliente.setNome_Cliente(nome);
		cliente.setCPF_cliente(cpf);
		cliente.setRG_cliente(rg);
		cliente.setEmail_cliente(email);
		cliente.setTelefone_Cliente(telefone);
		cliente.setData_Nascimento(dataNascimento);
		cliente.setEndereco(endereco);
		cliente.setCidade(cidade);
		cliente.setEstado(estado);
		cliente.setSenha(senha);
		
		// criando um objeto DAO para enviar o objeto Contato para o banco de dados
	    // usando o método save da classe ContatoDAO
		ClienteLoginDAO clienteDAO= new ClienteLoginDAO();
		clienteDAO.save(cliente);
		
		// Redirecionando o usuario para a pagina inicial da aplicação.
		//response.sendRedirect("home");
	}

}
