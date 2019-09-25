package com.alien.servlt;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import com.alien.mgr.goodsMgr;
import com.alien.mgr.typeMgr;
import com.alien.mgr.cartMgr;
import com.alien.model.type;
import com.alien.model.cart;
import com.alien.model.user;
/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/myWeb/index")
public class indexServlt extends HttpServlet {

	private goodsMgr gMgr=new goodsMgr();
	private typeMgr tMgr=new typeMgr();
	private cartMgr cMgr=new cartMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//取得热销商品
		List<Map<String,Object>> hotlist=gMgr.getHotGoodsList();
		request.setAttribute("hotList", hotlist);
		//取得新品商品
		List<Map<String,Object>> newlist=gMgr.getNewGoodsList();
		request.setAttribute("newList", newlist);
	
		
//      //购物车  test
//		cart c=null;
//		if(request.getSession().getAttribute("cart")!=null) {
//			//to do test
//			System.out.println("value"+request.getAttribute("cart not null"));
//			c=(cart)request.getSession().getAttribute("cart");
//		}else {
//			//to do test
//			System.out.println("value"+request.getAttribute("cart null"));
//	        user user= (user)request.getSession().getAttribute("user");
//	        c=new cart();
//	        if(user!=null){   	
//				c.setAllPrice(cMgr.calAllPrice(user.getId()));
//				c.setAllAmount(cMgr.calAllAmount(user.getId()));		
//			}else{
//				c.setAllPrice(0);
//				c.setAllAmount(0);
//			}
//	        request.getSession().setAttribute("cart", c);
//		}
//		
		//to do test
		System.out.println("value"+request.getAttribute("pageContext.request.contextPath"));
		
		//跳转到index.jsp
		request.getRequestDispatcher("/myWeb/index.jsp").forward(request,response);
	}

}
