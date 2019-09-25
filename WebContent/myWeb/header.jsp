<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--header-->
 <div class="header">
       	<div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="${pageContext.request.contextPath }/myWeb/">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            
            <li><a href="${pageContext.request.contextPath }/myWeb/goodsList">books</a></li>                        
            
            <c:choose><c:when test="${empty user }">
            <li><a href="register.jsp">register</a></li>
            <li><a href="login.jsp">login</a></li>
			</c:when><c:otherwise>
         	<li><a href="userCenter.jsp">user center</a></li>
         	<li><a href="${pageContext.request.contextPath }/myWeb/orderList">my order</a></li>
            <li><a href="${pageContext.request.contextPath }/myWeb/userLogout">exit</a></li>
			</c:otherwise></c:choose>
						
            </ul>
          
			<div class="search">
				<form class="navbar-form" action="${pageContext.request.contextPath }/myWeb/goodsSearch">
					<input type="text" class="form-control" name="keyword" placeholder="请输入搜索内容" > 
					<button type="submit" class="btn btn-default" aria-label="Left Align" >搜索</button>
				</form>		
			</div>			
		
			
        </div>     
</div> 

<!--end header-->