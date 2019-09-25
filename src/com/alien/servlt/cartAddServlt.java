package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.goods;
import com.alien.model.cart;
import com.alien.model.order;
import com.alien.model.user;
import com.alien.mgr.cartMgr;
import com.alien.mgr.goodsMgr;

/**
 * Servlet implementation class GoodsBuyServelt
 */
@WebServlet("/myWeb/cartAdd")
public class cartAddServlt extends HttpServlet {
    
	private goodsMgr gMgr=new goodsMgr();
	private cartMgr cMgr=new cartMgr();
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//to do test 
		System.out.println("come cartAdd");
		
		if(null==request.getSession().getAttribute("user")){
			request.getRequestDispatcher("/myWeb/preLogin.jsp").forward(request, response);	
		}
		else{
			order o=null;
			if(request.getSession().getAttribute("order")!=null) {
				o=(order)request.getSession().getAttribute("order");
			}else {
				o=new order();
				request.getSession().setAttribute("order", o);
			}
			int goodsid=Integer.parseInt(request.getParameter("goodsid"));
			goods goods=gMgr.getById(goodsid);
			if(goods.getStock()>0) {
				o.addGoods(goods);
				request.setAttribute("failMsg", "add cart success!");
			}else {
				request.setAttribute("failMsg", "stock unenough!");
			}
			request.setAttribute("g", goods);
			if(Integer.parseInt(request.getParameter("type"))==0){
				request.getRequestDispatcher("/myWeb/details.jsp").forward(request, response);	
			}else{
				request.getRequestDispatcher("/myWeb/car.jsp").forward(request, response);	
			}
		}
//		//cart _c=(cart)request.getSession().getAttribute("cart");
//
//		user user = (user)request.getSession().getAttribute("user");
//		int goodsid=Integer.parseInt(request.getParameter("goodsid"));
//		
//		//to do test 
//		System.out.println(goodsid);
//		goods goods=gMgr.getById(goodsid);
//		if(goods.getStock()>0) {
//			if(cMgr.add(goodsid,user.getId())){
//				request.setAttribute("failMsg", "add cart success!");
//			}else {
//				request.setAttribute("failMsg", "add cart fail!");
//			}
//		}else{
//			request.setAttribute("failMsg", "stock unenough!");
//		}
//		request.setAttribute("g", goods);
//		request.getRequestDispatcher("/myWeb/details.jsp").forward(request, response);	
	}

}

