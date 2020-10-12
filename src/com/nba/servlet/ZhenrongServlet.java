package com.nba.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nba.bean.Player;
import com.nba.service.PlayerService;
import com.nba.service.PlayerServiceImpl;

/**
 * Servlet implementation class ZhenrongServlet
 */
@WebServlet("/ZhenrongServlet")
public class ZhenrongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PlayerService service = new PlayerServiceImpl();
		ArrayList<Player> list = new ArrayList<Player>();
		HttpSession session = request.getSession();
	    list = service.selectAll();
	    session.setAttribute("list", list);
	    response.sendRedirect(request.getContextPath()+"/zhenrong.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
