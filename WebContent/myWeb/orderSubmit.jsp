<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="wrap">
       <!-- header -->
<%@ include file="header.jsp"%>
       
        <!-- end header -->
       <div class="center_content">
       	<div class="left_content">
       		<div class="crumb_nav">
            <a>home</a> &gt;&gt; order submit
            </div>
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Order Submit</div>
        
        	<div class="feat_prod_box_details">
            
             <!--  My Account -->
            <div class="contact_form">
                <div class="form_subtitle"> My Account</div>
             
                    <div class="form_row">
                    <label class="contact"><strong>Receiver Name:</strong></label>
                    <label class="contact"><strong>${user.name }</strong></label>
                    </div>                           
                    
                </div>    
            <!--  end My Account -->
            
            <!--  Receive Message -->
            <form name="register" action="${pageContext.request.contextPath }/myWeb/orderConfirm" method="post"> 
            <!-- Confirm Receive Message -->
            <div class="contact_form">          
                	<div class="form_subtitle">Confirm Receive Message</div>
           
                   		<div class="form_row">
                    		<label class="contact"><strong>Receiver Name:</strong></label>
                    		<input type="text" class="contact_input" name="name" value="${user.name }" placeholder="请输入收货" required="required"/>
                    	</div>  

						<div class="form_row">
                    	<label class="contact"><strong>Receive Phone:</strong></label>
                	    <input type="text" class="contact_input" name="phone" value="${user.phone }" placeholder="请输入收货电话" required="required"/>
                    	</div> 
                                        

                   		<div class="form_row">
                    	<label class="contact"><strong>Receiver Address:</strong></label>
                    	<input type="text" class="contact_input" name="address" value="${user.address }" placeholder="请输入收货地址" required="required"/>
                    	</div>                   
            </div>

            <!-- end of Confirm Receive Message -->
            <!-- Pay Way -->
            <div class="contact_form">
                <div class="form_subtitle"> Pay Way</div>   
                    <div class="form_row">
                    <h3>支付金额: ${order.total }</h3>	

					<div class="col-sm-6 col-md-4 col-lg-3 ">
					<label>
					<div class="thumbnail">
						<input type="checkbox" name="paytype" value="1"/>
						<img src="images/wechat.jpg" alt="微信支付">
					</div>
					</label>
					</div>
					
					<div class="col-sm-6 col-md-4 col-lg-3 ">
					<label>
					<div class="thumbnail">
						<input type="checkbox" name="paytype" value="2"/>
						<img src="images/alipay.jpg" alt="支付宝支付">
					</div>
					</label>
					</div>
					
					<div class="col-sm-6 col-md-4 col-lg-3 ">
					<label>
					<div class="thumbnail">
						<input type="checkbox" name="paytype" value="3" />
						<img src="images/offline.jpg" alt="货到付款">
					</div>
					</label>
					</div>
					
					<div class="clearfix"> </div>
	                
                    <!-- tip -->       		    
					<%@ include file="tip.jsp"%>
					<!-- end tip -->
  
                    <div class="form_row">
                    <input type="submit" class="register" value="确认订单 " />
                    </div>   
            		
            		</div>         
			 </div> 
			 <!-- end of Pay Way -->
							
             </form>     
             <!--  end Receiver Message -->
            
          
             
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
       