package com.nba.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nba.bean.Process;
import com.nba.bean.User;
import com.nba.service.UserService;
import com.nba.service.UserServiceImpl;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		UserService service=new UserServiceImpl();
		int count=service.login(username, password);
		ArrayList<Process> list= service.selectAll();
		Process [] pr = new Process[13];
		for(int i = 0 ; i < pr.length ; i++) {
			pr[i] = list.get(i+1);
		}
		System.out.println(Arrays.toString(pr));
		HttpSession session=request.getSession();
		if(count==1) {
			//-³É¹¦
			list=service.selectAll();
			session.setAttribute("pr",pr);
			
			response.sendRedirect(request.getContextPath()+"/process.jsp");
		}else {
			//-Ê§°Ü
			response.sendRedirect("https://www.sina.com.cn");
		}
	}

}
