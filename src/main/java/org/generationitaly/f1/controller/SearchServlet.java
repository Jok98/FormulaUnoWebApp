package org.generationitaly.f1.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.f1.entity.Circuito;
import org.generationitaly.f1.entity.Pilota;
import org.generationitaly.f1.entity.Scuderia;
import org.generationitaly.f1.service.F1Service;
import org.generationitaly.f1.service.impl.F1ServiceImpl;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private F1Service f1Service = new F1ServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String search = request.getParameter("search");
		String searchType= request.getParameter("ricerca");
		switch(searchType){
		case"piloti":
			Pilota pilota = (Pilota) f1Service.findBySearch(search,searchType);
			request.setAttribute("pilota", pilota);
			request.getRequestDispatcher("pilota.jsp").forward(request, response);
			break;
		case "circuiti":
			Circuito circuito = (Circuito) f1Service.findBySearch(search,searchType);
			request.setAttribute("circuito", circuito);
			request.getRequestDispatcher("circuito.jsp").forward(request, response);
			break;
		case "scuderie":
			Scuderia scuderia = (Scuderia) f1Service.findBySearch(search,searchType);
			request.setAttribute("scuderia", scuderia);
			request.getRequestDispatcher("scuderia.jsp").forward(request, response);
			break;
			
		}

	}

}
