<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/cart.js"></script>
</head>
<body>
<div id="wrap">

       <!-- 头部 -->
<%@ include file="header.jsp"%>
       
        <!-- end 头部 -->
       <div class="center_content">
       	<div class="left_content">
       		<div class="crumb_nav">
            <a>home</a> &gt;&gt; please login
            </div>
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My cart</div>
        
       
            <div class="feat_prod_box_details">
            <h1 class="red" >请登录后查看购物车!</h1>
            <a class="continue" href="${pageContext.request.contextPath }/myWeb/login.jsp">  >>login</a> 
            </div>
          
        <div class="clear"></div>
        </div><!--end of left content-->
        <!-- right content-->
        <%@ include file="right.jsp"%>
        <!--end of right content-->

       <div class="clear"></div>
       </div><!--end of center content-->
       
              
		<!-- footer -->
		<%@ include file="footer.jsp"%>
		<!-- end of footer -->
       
    

</div>

</body>
</html>>