<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css"  href="css/lightbox.css"  media="screen" />
<script type="text/javascript" src="js/prototype.js" ></script>
<script type="text/javascript" src="js/scriptaculous.js?load=effects" ></script>
<script type="text/javascript" src="js/lightbox.js" ></script>
<script type="text/javascript" src="js/java.js"></script>

<script type="text/javascript" src="js/cart.js"></script>	
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.flexslider.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="layer/layer.js"></script>
</head>
<body>
<div id="wrap">

 
       <!-- 头部 -->
<%@ include file="header.jsp"%>
       
        <!-- end 头部 -->
       
       
       <div class="center_content">
       	<div class="left_content">
        	<div class="crumb_nav">
            <a>home</a> &gt;&gt; details
            </div>
            
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>${g.name }</div>
        
        	<div class="feat_prod_box_details">
            
            	<div class="prod_img"><a"><img src="${pageContext.request.contextPath }${g.image1}" alt="" title="" border="0" /></a>
                <br /><br />
                <a href="${pageContext.request.contextPath }${g.image2}" rel="lightbox"><img src="images/zoom.gif" alt="" title="" border="0" /></a>
                </div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">Details</div>
                    <p class="details">${g.intro }</p>
                    <div class="price"><strong>Category :</strong> <span class="red">${g.type.name }</span></div>                    
                    <div class="price"><strong>PRICE:</strong> <span class="red">¥ ${g.price }</span></div>
					<!-- 
					<a href="javascript:;" onclick="buy(${g.id})" class="more"><img src="images/order_now.gif" alt="" title="" border="0" /></a>
                    <a href="${pageContext.request.contextPath }/myWeb/addCart?goodsid=${g.id}" class="more"><img src="images/add_cart.gif" alt="" title="" border="0" /></a>	       
					 -->                 
                  
                    <form type="hidden" action="/myWeb/cartAdd?goodsid=${g.id}&type=${0}" method="post">
                    <!-- tip -->
					<%@ include file="tip.jsp"%>
        			<!-- end of tip -->
                    <input type="submit" class="register" value="add cart"/>
                    </form>
                    
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            
              
            <div id="demo" class="demolayout">

                <ul id="demo-nav" class="demolayout">
                <li><a class="active" href="#tab1">More details</a></li>
                <!-- 
                <li><a class="" href="#tab2">Related books</a></li>
                 -->
                </ul>
    
            <div class="tabs-container">
            
                    <div style="display: block;" class="tab" id="tab1">
                                        <p class="more_details">${g.intro }
                                        </p>
                            <ul class="list">
							<li data-thumb="${pageContext.request.contextPath }${g.image2}">
							   <div class="thumb-image"> <img src="${pageContext.request.contextPath }${g.image2}" data-imagezoom="true" class="img-responsive"> </div>
							</li> 
						</ul>
                                                                 
                    </div>	
                    
                            <div style="display: none;" class="tab" id="tab2">
         
                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <a href="details.html"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    


                   
                    <div class="clear"></div>
                            </div>	
            
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
</html></html>