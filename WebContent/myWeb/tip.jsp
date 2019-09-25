<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="tip">
	<div class="form_row"> 
                       <c:if test="${!empty msg }">
					   		<p name="terms" >${msg }</p>
					   </c:if>
					   <c:if test="${!empty failMsg }">
					   		<p name="terms" >${failMsg }</p>
					   </c:if>    
	</div>
</div>
