package com.alien.servlt;

	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	import com.alien.model.page;
	import com.alien.mgr.goodsMgr;

	/**
	 * Servlet implementation class GoodsRecommendListServlet
	 */
	@WebServlet("/myWeb/goodsTypeList")
	public class goodsTypeListServlt extends HttpServlet {
		private goodsMgr gService=new goodsMgr();
		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int typeid=Integer.parseInt(request.getParameter("typeid"));	
			int pageNo=1;
			if(request.getParameter("pageNo")!=null) {
				pageNo=Integer.parseInt(request.getParameter("pageNo"));
			}
			page p=gService.getGoodsPage(typeid, pageNo);
			request.setAttribute("p", p);
			request.setAttribute("typeid", typeid);
			request.getRequestDispatcher("/myWeb/goods.jsp").forward(request, response);
		}


	}

