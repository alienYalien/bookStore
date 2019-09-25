package com.alien.listener;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.sun.xml.internal.ws.api.pipe.Tube;
import com.alien.model.cart;
import com.alien.mgr.cartMgr;
/**
 * Application Lifecycle Listener implementation class ApplicationListener
 *
 */
@WebListener
public class cartListener implements ServletContextListener {

	private cartMgr cMgr=new cartMgr();
	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    //监听，每个页面都要用到的 自动获取  购物车相关信息  列表
    public void contextInitialized(ServletContextEvent arg0)  { 
//      //购物车  test
//  	cart c=null;
//		if(request.getSession().getAttribute("cart")!=null) {
//			c=(cart)request.getSession().getAttribute("cart");
//		}else {
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
         //List<type> list=tMgr.selectAll();
        // arg0.getServletContext().setAttribute("typeList", list);//监听 向所有页面发送一个List用于保存 
              
    }
}
