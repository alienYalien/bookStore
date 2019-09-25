<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
        	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span><a href="${pageContext.request.contextPath }/myWeb/goodsList?type=3">热销推荐</a></div>
        
        	<c:forEach begin="0" end="2" var="i">

            	<c:set var="g" value="${scrollList[i]}" />

            	<c:if test="${!empty g }">

                    <div class="feat_prod_box">
            
            		<div class="prod_img"><a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" title="" border="0" /></a></div>
                
                	<div class="prod_det_box">
                		<div class="box_top"></div>
                    	<div class="box_center">
                    	<div class="prod_title">${g.name}</div>
                   		 <p class="details">${g.intro}</p>
                    		<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}" class="more">- more details -</a>
                    	<div class="clear"></div>
                    	</div>
                    
                    	<div class="box_bottom"></div>
               		</div>    
            		<div class="clear"></div>
            		</div>

            	</c:if>
			
			<!--  
			       <c:if test="${empty g }">
            		
            		</c:if>
			
			 -->
     
 			</c:forEach>
            
            
            <!-- 新品推荐 -->        
           <div class="title"><span class="title_icon"><img src="images/bullet2.gif" alt="" title="" /></span><a href="${pageContext.request.contextPath }/myWeb/goodsList?type=2">新品推荐</a></div> 
           
           <div class="new_products">
				
				<c:forEach begin="0" end="8" var="i">

            	<c:set var="g" value="${hotList[i]}" />

            	<c:if test="${!empty g }">
					<div class="new_prod_box">
                        <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}">${g.name}</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                        <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
            	</c:if>
			
			<!--  
			       <c:if test="${empty g }">
            		
            		</c:if>
			
			 -->
     
 				</c:forEach>
                   
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
</html>