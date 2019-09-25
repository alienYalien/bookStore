package com.alien.filter;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.net.httpserver.HttpServer;
import com.alien.mgr.goodsMgr;
import com.alien.model.user;

/**
 * Servlet Filter implementation class AdminFilter
 */
@WebFilter("/myWeb/*ss")
public class userFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}
	private goodsMgr gMgr=new goodsMgr();
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse resp=(HttpServletResponse)response;
		
		//取得广告位商品
				List<Map<String,Object>> scrollList=gMgr.getScrollGoodsList();
				req.setAttribute("scrollList", scrollList);
			//chain.doFilter(request, response);
				req.getRequestDispatcher("/myWeb/index.jsp").forward(request,response);
		// pass the request along the filter chain
				//to do test
				System.out.println("userFilter");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
