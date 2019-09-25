package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.cartMgr;
import com.alien.model.cart;
import com.alien.model.user;

/**
 * Servlet implementation class GoodsLessonServelt
 */
@WebServlet("/myWeb/goodsCartOper")
public class cartOperServlt extends HttpServlet {
       
	private cartMgr cMgr=new cartMgr();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//to do test 
		System.out.println("come goodsCartOper");
		
		user user = (user)request.getSession().getAttribute("user");
		if(user==null){
			request.getRequestDispatcher("/myWeb/login.jsp").forward(request, response);			
		}
		int cartid=Integer.parseInt(request.getParameter("cartid"));
		int carttype=Integer.parseInt(request.getParameter("carttype"));
				
		boolean ok;
		if(carttype==2){
			ok=cMgr.delete(cartid);
		}else{
			ok=cMgr.update(cartid,carttype);
		}
		if(ok){
			request.setAttribute("failMsg", "ok!");
		}else{
				request.setAttribute("failMsg", "not ok!");
		}
		List<cart> list=cMgr.selectAll(user.getId());
		request.setAttribute("cartList",list);
		request.getRequestDispatcher("/myWeb/cart.jsp").forward(request, response);			
	}

}
