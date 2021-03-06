package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderSubmit
 */
@WebServlet("/myWeb/orderSubmit")
public class orderSubmitServlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(request.getSession().getAttribute("user")!=null) {
			request.getRequestDispatcher("/myWeb/orderSubmit.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/myWeb/preLogin.jsp").forward(request, response);	
		}
	}



}
