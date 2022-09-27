package org.generationitaly.f1.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.f1.entity.Pilota;
import org.generationitaly.f1.service.F1Service;
import org.generationitaly.f1.service.impl.F1ServiceImpl;

/**
 * Servlet implementation class FindPilotaByNomeServlet
 */
@WebServlet("/pilota")
public class FindPilotaByNumeroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private F1Service f1Service = new F1ServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int numeroPilota = Integer.parseInt(request.getParameter("numeroPilota"));
		Pilota pilota = f1Service.findPilotaByNumero(numeroPilota);
		request.setAttribute("pilota", pilota);
		request.getRequestDispatcher("pilota.jsp").forward(request, response);
	}

}
