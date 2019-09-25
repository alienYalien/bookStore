package com.alien.servlt;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.goods;
import com.alien.model.page;
import com.alien.model.type;
import com.alien.mgr.goodsMgr;
import com.alien.mgr.typeMgr;

/**
 * Servlet implementation class GoodListServlet
 */
@WebServlet("/myWeb/goodsList")
public class goodsListServlt extends HttpServlet {
	private goodsMgr gMgr=new goodsMgr();
	private typeMgr tService=new typeMgr();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		page p;
		//page number
		int pageNo=1;
		if(request.getParameter("pageNo")!=null) {
			pageNo=Integer.parseInt(request.getParameter("pageNo"));
		}
		
//		//keyword search
//		String keyword=request.getParameter("keyword");
//		//to do test 
//		System.out.println("keyword"+keyword);
//		if(keyword !=null){
//			p=gMgr.getSearchGoodsPage(keyword,pageNo);
//			request.setAttribute("keyword",URLEncoder.encode(keyword,"utf-8"));//点击下一页后 中文未编码导致的错误
//		}else{
			//type 0：all; 1：ad; 2：hot; 3：new; 
			int type = 0;		
			if(request.getParameter("type")!=null) {
				type = Integer.parseInt(request.getParameter("type"));
			}	
			p=gMgr.getGoodsRecommendPage(type, pageNo);
			request.setAttribute("type", type);	
		//}		

		request.setAttribute("p", p);
		request.getRequestDispatcher("/myWeb/goods.jsp").forward(request, response);
	}

}
