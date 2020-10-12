package com.nba.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nba.service.UserService;
import com.nba.service.UserServiceImpl;

/**
 * Servlet implementation class regLoginServlet
 */
@WebServlet("/regLoginServlet")
public class regLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		UserService service=new UserServiceImpl();
		service.addLogin(username, password);
		HttpSession session=request.getSession();
		ArrayList<String> list=new ArrayList<String>();
		list.add(username);
		list.add(password);
		session.setAttribute("login", list);
		response.sendRedirect(request.getContextPath()+"/login.jsp");
	}

}
