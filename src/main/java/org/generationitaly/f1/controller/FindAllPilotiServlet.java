package org.generationitaly.f1.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.f1.entity.Pilota;
import org.generationitaly.f1.entity.Scuderia;
import org.generationitaly.f1.service.F1Service;
import org.generationitaly.f1.service.impl.F1ServiceImpl;

/**
 * Servlet implementation class FindAllScuderieServlet
 */
@WebServlet("/piloti")
public class FindAllPilotiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private F1Service f1Service = new F1ServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Pilota> piloti = f1Service.findAllPiloti();
		request.setAttribute("piloti", piloti);
		request.getRequestDispatcher("piloti.jsp").forward(request, response);
	}

}
