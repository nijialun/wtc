package com.cn;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Fibo;

public class Login extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		    request.setCharacterEncoding("utf-8");
			String id1 = request.getParameter("id");
			Fibo fibo = new Fibo();
			int id = Integer.parseInt(id1);
			
			List<Integer> sum = fibo.sum2(id);
			request.setAttribute("sum",sum);
			String path="show.jsp";
			request.getRequestDispatcher(path).forward(request, response);
	
	}

}
