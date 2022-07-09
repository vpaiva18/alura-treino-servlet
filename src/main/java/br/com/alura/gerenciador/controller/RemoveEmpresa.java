package br.com.alura.gerenciador.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.model.Banco;

public class RemoveEmpresa implements Acao  {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);
			
		Banco banco = new Banco();
		banco.removeEmpresa(id);
		
		return "redirect:orquestrador?acao=ListaEmpresa";
	}
	
}
