package org.generationitaly.f1.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.f1.entity.Circuito;
import org.generationitaly.f1.service.F1Service;
import org.generationitaly.f1.service.impl.F1ServiceImpl;

/**
 * Servlet implementation class FindCircuitoByNomeServlet
 */
@WebServlet("/circuito")
public class FindCircuitoByNomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private F1Service f1Service = new F1ServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nomeCircuito = request.getParameter("nomeCircuito");
		Circuito circuito = f1Service.findCircuitoByNome(nomeCircuito);
		request.setAttribute("circuito", circuito);
		request.getRequestDispatcher("circuito.jsp").forward(request, response);

	}

}
