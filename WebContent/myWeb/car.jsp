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
            <a>home</a> &gt;&gt; cart
            </div>
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My cart</div>
        
        
                 
            <c:choose><c:when test="${empty user }">
            <div class="feat_prod_box_details">
            <h1 class="red" >请登录后查看购物车!</h1>
            <a class="continue" href="${pageContext.request.contextPath }/myWeb/login.jsp">  >>login</a> 
            </div>
			</c:when><c:otherwise>
			
			<c:choose><c:when test="${empty order.itemMap  }">
            <div class="feat_prod_box_details">
            <h1 class="red" >空空如也!</h1>
            <a class="continue" href="${pageContext.request.contextPath }/myWeb/goodsList">  >>购物</a> 
            </div>
			</c:when><c:otherwise>

         <div class="feat_prod_box_details">
            
            <table class="cart_table">
            	<tr class="cart_title">
                	<td>Item pic</td>
                	<td>Book name</td>
                    <td>price</td>
                    <td>Amount</td>   
                    <td>Operation</td>          
                </tr>    
         
    	
    		      <c:forEach items="${order.itemMap  }" var="item">           
            	<tr>
                	<td><a href="${pageContext.request.contextPath }/myWeb/goodDetailS?id=${item.key  }">
                	<img src="images/cart_thumb.gif" alt="" title="" border="0" class="cart_thumb" /></a></td>
                	<!-- ${pageContext.request.contextPath }${list} -->
                	<td>${item.value.goods.name }</td>
                    <td>¥ ${item.value.price }</td>
                    <td>${item.value.amount }</td>     		
            		<td>
            		<form type="hidden" action="/myWeb/cartAdd?goodsid=${item.key }&type=${1}" method="post">
                    <input type="submit" class="register" value="增加"/>
                    </form>
                    <form type="hidden" action="/myWeb/cartReduce?goodsid=${item.key }&type=${0}" method="post">
                    <input type="submit" class="register" value="减少"/>
                  	</form>
                	<form type="hidden" action="/myWeb/cartReduce?goodsid=${item.key }&type=${1}" method="post">
                    <input type="submit" class="register" value="删除"/>
                  	</form>
            		</tr>          
                </c:forEach>        
    		
    		 
    		 
            </table>
           <h3>订单总金额: ¥ ${order.total }</h3>
            <a href="/myWeb/goodsList" class="continue">&lt; continue</a>
            <a href="/myWeb/orderSubmit" class="checkout">checkout &gt;</a>
            

             
            
            </div>	
			</c:otherwise></c:choose></c:otherwise></c:choose>
        	
            
              

            

            
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