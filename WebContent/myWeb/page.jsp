<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        	<div class="pagination" style='text-align:center;'>
				<a class='btn btn-info' <c:if test="${p.pageNo==1 }">disabled</c:if> <c:if test="${p.pageNo!=1 }">href="${pageContext.request.contextPath }${param.url }?pageNo=1${param.param }"</c:if>>首页</a>
				<a class='btn btn-info' <c:if test="${p.pageNo==1 }">disabled</c:if> <c:if test="${p.pageNo!=1 }">href="${pageContext.request.contextPath }${param.url }?pageNo=${p.pageNo-1 }${param.param }"</c:if>>上一页</a>
				<h3 style='display:inline;'>[${p.pageNo }/${p.totalPage }]</h3>
				<h3 style='display:inline;'>[${p.totalCount }]</h3>
				<a class='btn btn-info' <c:if test="${p.totalPage==0||p.pageNo==p.totalPage }">disabled</c:if> <c:if test="${p.pageNo!=p.totalPage }">href="${pageContext.request.contextPath }${param.url }?pageNo=${p.pageNo+1 }${param.param }"</c:if>>下一页</a>
				<a class='btn btn-info' <c:if test="${p.totalPage==0||p.pageNo==p.totalPage }">disabled</c:if> <c:if test="${p.pageNo!=p.totalPage }">href="${pageContext.request.contextPath }${param.url }?pageNo=${p.totalPage }${param.param }"</c:if>>尾页</a>
				<input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="${pageContext.request.contextPath }${param.url }?pageNo="+(this.previousSibling.value)+"${param.param }"'>GO</a>
			</div>