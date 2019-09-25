package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.order;

/**
 * Servlet implementation class GoodsLessonServelt
 */
@WebServlet("/myWeb/cartReduce")
public class cartReduceServlt extends HttpServlet {
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(null==request.getSession().getAttribute("user")){
			request.getRequestDispatcher("/myWeb/preLogin.jsp").forward(request, response);	
		}
		else{
			order o=(order)request.getSession().getAttribute("order");
			int goodsid=Integer.parseInt(request.getParameter("goodsid"));
			if(Integer.parseInt(request.getParameter("type"))==0){
				o.lessen(goodsid);
			}else{
				o.delete(goodsid);
			}
			
			request.setAttribute("failMsg", "reduce cart success!");
			request.getRequestDispatcher("/myWeb/car.jsp").forward(request, response);	
		}
	}

}
