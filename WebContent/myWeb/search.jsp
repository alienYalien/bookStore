<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
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
            <a>home</a> &gt;&gt; books
            </div>
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>            
            <c:if  test="${!empty param.keyword }"> 搜索‘${param.keyword }’结果  </c:if>
			<c:if  test="${empty param.keyword }">搜索‘全部’结果</c:if>			
            </div>
           
           <div class="new_products">		
           
		   		<c:forEach items="${p.list }" var="g">
            		<div class="new_prod_box">
                        <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}">${g.name }</a>
                        <div class="new_prod_bg">
                        <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name }" title="" class="thumb" border="0" /></a>
                        </div>           
          		   </div> 
            	</c:forEach>

            <!--  search next page -->
            <div class="pagination" style='text-align:center;'>
				<a class='btn btn-info' <c:if test="${p.pageNo==1 }">disabled</c:if> <c:if test="${p.pageNo!=1 }">href="${pageContext.request.contextPath }/myWeb/goodsSearch?pageNo=1&keyword=${param.keyword}"</c:if>>首页</a>
				<a class='btn btn-info' <c:if test="${p.pageNo==1 }">disabled</c:if> <c:if test="${p.pageNo!=1 }">href="${pageContext.request.contextPath }/myWeb/goodsSearch?pageNo=${p.pageNo-1 }&keyword=${keyword}"</c:if>>上一页</a>
				<h3 style='display:inline;'>[${p.pageNo }/${p.totalPage }]</h3>
				<h3 style='display:inline;'>[${p.totalCount }]</h3>
				<a class='btn btn-info' <c:if test="${p.totalPage==0||p.pageNo==p.totalPage }">disabled</c:if> <c:if test="${p.pageNo!=p.totalPage }">href="${pageContext.request.contextPath }/myWeb/goodsSearch?pageNo=${p.pageNo+1 }&keyword=${keyword}"</c:if>>下一页</a>
				<a class='btn btn-info' <c:if test="${p.totalPage==0||p.pageNo==p.totalPage }">disabled</c:if> <c:if test="${p.pageNo!=p.totalPage }">href="${pageContext.request.contextPath }/myWeb/goodsSearch?pageNo=${p.totalPage }&keyword=${keyword}"</c:if>>尾页</a>
				<input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="${pageContext.request.contextPath }/myWeb/goodsSearch?keyword=${keyword}&pageNo="+(this.previousSibling.value)'>GO</a>
		  	</div>
            <!-- end of search next page -->
            
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