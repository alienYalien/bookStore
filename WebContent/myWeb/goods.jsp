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
            <c:if test="${type ==0 }">全部书籍</c:if>
			<c:if test="${type ==2 }">新品推荐</c:if>
			<c:if test="${type ==3 }">热销推荐</c:if>	

			<c:if test="${typeid ==1 }">全部书籍</c:if>
			<c:if test="${typeid ==2 }">小说</c:if>
			<c:if test="${typeid ==3 }">科幻书</c:if>
			<c:if test="${typeid ==4 }">计算机/编程</c:if>
			<c:if test="${typeid ==5 }">历史</c:if>
			<c:if test="${typeid ==6 }">应用书籍书</c:if>
			<c:if test="${typeid ==7 }">考研</c:if>
			<c:if test="${typeid ==8 }">考古</c:if>
			<c:if test="${typeid ==9 }">全部书籍</c:if>
			<c:if test="${typeid ==10 }">English</c:if>
			<c:if test="${typeid ==99 }">搜索结果</c:if>

					
            </div>
           
           <div class="new_products">		
           
		   		<c:forEach items="${p.list }" var="g">
            		<div class="new_prod_box">
                        <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}">${g.name }</a>
                        <div class="new_prod_bg">
                        <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name }" title="" class="thumb" border="0" /></a>
                        </div>           
          		   </div> 
            	</c:forEach>
                   
            <!-- 
            <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <a href="details.jsp"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
            </div>
             -->  
            <!-- 
            <div class="pagination">
            <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>…<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a>
            </div> 
             -->  
            
            
          	<div class="pagination" style='text-align:center;'>
				<a class='btn btn-info' <c:if test="${p.pageNo==1 }">disabled</c:if> <c:if test="${p.pageNo!=1 }">href="${pageContext.request.contextPath }${param.url }?pageNo=1${param.param }"</c:if>>首页</a>
				<a class='btn btn-info' <c:if test="${p.pageNo==1 }">disabled</c:if> <c:if test="${p.pageNo!=1 }">href="${pageContext.request.contextPath }${param.url }?pageNo=${p.pageNo-1 }${param.param }"</c:if>>上一页</a>
				<h3 style='display:inline;'>[${p.pageNo }/${p.totalPage }]</h3>
				<h3 style='display:inline;'>[${p.totalCount }]</h3>
				<a class='btn btn-info' <c:if test="${p.totalPage==0||p.pageNo==p.totalPage }">disabled</c:if> <c:if test="${p.pageNo!=p.totalPage }">href="${pageContext.request.contextPath }${param.url }?pageNo=${p.pageNo+1 }${param.param }"</c:if>>下一页</a>
				<a class='btn btn-info' <c:if test="${p.totalPage==0||p.pageNo==p.totalPage }">disabled</c:if> <c:if test="${p.pageNo!=p.totalPage }">href="${pageContext.request.contextPath }${param.url }?pageNo=${p.totalPage }${param.param }"</c:if>>尾页</a>
				<input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="${pageContext.request.contextPath }${param.url }?pageNo="+(this.previousSibling.value)+"${param.param }"'>GO</a>
			</div>
            
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