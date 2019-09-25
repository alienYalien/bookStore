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
       <!-- header -->
<%@ include file="header.jsp"%>
       
        <!-- end header -->
       <div class="center_content">
       	<div class="left_content">
       		<div class="crumb_nav">
            <a>home</a> &gt;&gt; user center
            </div>
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>User Center</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
            </p>
            
             <!--  My Account -->
            <div class="contact_form">
                <div class="form_subtitle"> My Account</div>
             
                    <div class="form_row">
                    <label class="contact"><strong>Receiver Name:</strong></label>
                    <label class="contact"><strong>${user.name }</strong></label>
                    </div>                           
                    
                </div>    
            <!--  end My Account -->
            
            <!--  Receiver Message -->
            <div class="contact_form">
                <div class="form_subtitle">Receiver Message</div>
                 <form name="register" action="${pageContext.request.contextPath }/myWeb/}/userChangeAddress" method="post">          
                    <div class="form_row">
                    <label class="contact"><strong>Receiver Name:</strong></label>
                    <input type="text" class="contact_input" name="name" value="${user.name }" placeholder="请输入收货"/>
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>Receiver Phone:</strong></label>
                    <input type="text" class="contact_input" name="phone" value="${user.phone }" placeholder="请输入收货电话"/>
                    </div>                     

                   <div class="form_row">
                    <label class="contact"><strong>Receiver Address:</strong></label>
                    <input type="text" class="contact_input" name="address" value="${user.address }" placeholder="请输入收货地址"/>
                    </div>  
  
           		    <!-- tip -->
					<%@ include file="tip.jsp"%>
					<!-- end tip -->
  
                    <div class="form_row">
                    <input type="submit" class="register" value="modify " />
                    </div>   
                    
                  </form>     
                    
                </div>    
            <!--  end Receiver Message -->
            
             <!--  Security Message -->
             <div class="contact_form">
                <div class="form_subtitle">Security Message</div>
                 <form name="register" action="${pageContext.request.contextPath }/myWeb/userChangePwd" method="post">          
                    <div class="form_row">
                    <label class="contact"><strong>Password:</strong></label>
                    <input type="text" class="contact_input" name="password" placeholder="请输入原密码"/>
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>New Password:</strong></label>
                    <input type="text" class="contact_input" name="newPassword" placeholder="请输入新密码"/>
                    </div>                      
  
           		    <!-- tip -->
					<%@ include file="tip.jsp"%>
					<!-- end tip -->
  
                    <div class="form_row">
                    <input type="submit" class="register" value="modify " />
                    </div>   
                    
                  </form>     
                    
                </div>   
             <!-- end Security Message  -->
             
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
       