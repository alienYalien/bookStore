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
            <a href="index.jsp">home</a> &gt;&gt; register
            </div>
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Register</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
            </p>
            
              	<div class="contact_form">
                <div class="form_subtitle">create new account</div>
                 <form name="register" action="${pageContext.request.contextPath}/myWeb/userRegister" method="post">          
                    <div class="form_row">
                    <label class="contact"><strong>Username:</strong></label>
                    <input type="text" class="contact_input" name="username" required="required"/>
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>Password:</strong></label>
                    <input type="text" class="contact_input" name="password" required="required"/>
                    </div> 

                    <div class="form_row">
                    <label class="contact"><strong>Email:</strong></label>
                    <input type="text" class="contact_input" name="email" required="required" />
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>Receive Phone:</strong></label>
                    <input type="text" class="contact_input" name="phone" required="required" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>Receiver Name:</strong></label>
                    <input type="text" class="contact_input" name="name" required="required" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>Receive Adrres:</strong></label>
                    <input type="text" class="contact_input" name="address" required="required" />
                    </div>                    

                    <div class="form_row">
                        <div class="terms">
                        <input type="checkbox" name="terms" />
                        I agree to the <a href="#">terms &amp; conditions</a>                        </div>
                    </div> 
                    
					<!-- tip -->
					<%@ include file="tip.jsp"%>
					<!-- end tip -->
                    
                    <div class="form_row">
                    <input type="submit" class="register" value="register" />
                    </div>   
                  </form>     
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