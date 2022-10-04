package org.generationitaly.f1.controller;

import java.io.IOException;
import java.util.ArrayList;
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
		System.out.println(search);
		String searchType= request.getParameter("ricerca");
		System.out.println(searchType);
		switch(searchType){
		case "piloti":
			List<Pilota> piloti = new ArrayList<Pilota>();
			for (Object obj : f1Service.findBySearch(search, searchType)) {
				piloti.add((Pilota)obj);
			}
			request.setAttribute("result", piloti);
			break;
		case "circuiti":
			List<Circuito> circuiti = new ArrayList<Circuito>();
			for (Object obj : f1Service.findBySearch(search, searchType)) {
				circuiti.add((Circuito)obj);
			}
			request.setAttribute("result", circuiti);
			break;
		case "scuderie":
			List<Scuderia> scuderie = new ArrayList<Scuderia>();
			for (Object obj : f1Service.findBySearch(search, searchType)) {
				scuderie.add((Scuderia)obj);
			}
			request.setAttribute("result", scuderie);
			break;
		}
		request.setAttribute("searchType", searchType);
		request.getRequestDispatcher("results.jsp").forward(request, response);
	}

}
