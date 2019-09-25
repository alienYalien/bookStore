<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <div class="right_content">
        	<div class="languages_box">
            <span class="red">Languages:</span>
            <a href="#" class="selected"><img src="images/gb.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a>
            </div>
                <div class="currency">
                <span class="red">Currency: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#" class="selected">USD</a>
                </div>
                
                
              <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart</div>
                  <div class="home_cart_content">TOTAL：￥${order.total }</span>
                  </div>
                  <a href="/myWeb/car.jsp " class="view_cart"><img src="images/cart.gif" alt="go to cart"/>  >></a>
              
              </div>
                      
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span><a href="${pageContext.request.contextPath }/myWeb/goodsList?type=1">今日精选推荐</a></div> 
                  
                  <c:forEach begin="0" end="5" var="i">

            	<c:set var="scroll" value="${scrollList[i]}" />

            	<c:if test="${!empty scroll }">

                    <div class="new_prod_box">
                        <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${scroll.id}">${scroll.name }</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${scroll.id}"><img src="${pageContext.request.contextPath }${scroll.cover}" alt="${scroll.name }" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>

            	</c:if>
     
 			</c:forEach>

             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>
             	<a href="${pageContext.request.contextPath }/myWeb/goodsList"></a>全部系列</div> 
                <ul class="list">
					<c:forEach items="${typeList }" var="t">
					<li><a  href="${pageContext.request.contextPath }/myWeb/goodsTypeList?typeid=${t.id}">${t.name }</a></li>
					</c:forEach>			                                            
                </ul>
                
             	<div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>Partners</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">books gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">books gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>                              
                </ul>      
             
             </div>         
             
        
        </div><!--end of right content-->