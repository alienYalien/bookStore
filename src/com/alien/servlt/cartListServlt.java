package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.cart;
import com.alien.model.user;
import com.alien.mgr.cartMgr;


/**
 * Servlet implementation class OrderListServelt
 */
@WebServlet("/myWeb/cartList")
public class cartListServlt extends HttpServlet {

	private cartMgr cMgr=new cartMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		user u=(user)request.getSession().getAttribute("user");
		List<cart> list=null;
		if(u!=null){
			list=cMgr.selectAll(u.getId());
		}
		//to do test
		System.out.println("come cartList");
		request.setAttribute("cartList", list);
		request.getRequestDispatcher("/myWeb/cart.jsp").forward(request, response);
	}

}
