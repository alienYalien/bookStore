<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="wrap">

       <!-- 头部 -->
<%@ include file="header.jsp"%>
       
        <!-- end 头部 -->
       <div class="center_content">
       	<div class="left_content">
       		<div class="crumb_nav">
            <a>home</a> &gt;&gt; my oreder
            </div>
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My Order</div>
        
        	<c:choose><c:when test="${empty orderlist }">
            <div class="feat_prod_box_details">
            <h1 class="red" >空空如也!</h1>
            <a class="continue" href="${pageContext.request.contextPath }/myWeb/goodsList">  >>购物</a> 
            </div>
			</c:when><c:otherwise>
        	<div class="feat_prod_box_details">
            
            <table class="order_table">
            	<tr class="order_title">
                	<td>ID</td>
                	<td>All Price</td>
                	<td>Goods Detail</td>                	
                    <td>Receive Message</td>
                    <td>Order State</td>
                    <td>Pay Way</td>
                    <td>Pay Time</td>
                                
                </tr>		
                		
				
				<c:forEach items="${orderlist }" var="order">
			         <tr>
			         	<td><p>${order.id }</p></td>
			         	<td><p>${order.total }</p></td>
			         	<td>
				         	<c:forEach items="${order.itemList }" var="item">
					         	<p>${item.goodsName}(${item.price})x ${item.amount}</p>
				         	</c:forEach>
			         	</td>
			         	<td>
			         		<p>${order.name }</p>
			         		<p>${order.phone }</p>
			         		<p>${order.address }</p>
			         	</td>
						<td>
							<p>
								<c:if test="${order.status==2 }"><span style="color:red;">已付款</span></c:if>
								<c:if test="${order.status==3 }"><span style="color:green;">已发货</span></c:if>
								<c:if test="${order.status==4 }"><span style="color:black;">已完成</span></c:if>
								
							</p>
						</td>
						<td>
							<p>
								<c:if test="${order.paytype==1 }">微信</c:if>
								<c:if test="${order.paytype==2 }">支付宝</c:if>
								<c:if test="${order.paytype==3 }">货到付款</c:if>
							</p>
						</td>
						<td><p>${order.datetime }</p></td>
						<td>
							
						</td>
			       	</tr>
				</c:forEach>   

            </table>
        <!-- page -->
        <!-- <%@ include file="page.jsp"%> -->
        <!--end of page-->
            <!-- 
            <a href="#" class="continue">&lt; continue</a>
            <a href="#" class="checkout">checkout &gt;</a>
             -->

        </div>	</c:otherwise></c:choose>
            
              

            

            
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