package com.alien.servlt;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.alien.model.order;
import com.alien.model.user;
import com.alien.mgr.orderMgr;

/**
 * Servlet implementation class OrderConfirmServelt
 */
@WebServlet("/myWeb/orderConfirm")
public class orderConfirmServlt extends HttpServlet {
	
	private orderMgr oMgr=new orderMgr(); 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//to do test 
		System.out.println("come orderConfirm"+request.getParameter("cartList"));
		
		if(null==request.getSession().getAttribute("user")){
			request.getRequestDispatcher("/myWeb/preLogin.jsp").forward(request, response);	
		}
		else{
			order o =(order)request.getSession().getAttribute("order");
			try {
				//request.setCharacterEncoding("utf-8");  改用filter过滤 编码
				BeanUtils.copyProperties(o, request.getParameterMap());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			o.setDatetime(new Date());
			o.setStatus(2);
			o.setUser((user) request.getSession().getAttribute("user"));
			oMgr.addOrder(o);
			request.getSession().removeAttribute("order");
			
			request.setAttribute("msg", "订单支付成功！ ");
			request.getRequestDispatcher("/myWeb/orderSuccess.jsp").forward(request, response);
		}
	}

}
