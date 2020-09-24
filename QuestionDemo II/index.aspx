<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="QuestionDemo_II.index" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>云工商-信息工程学院&实习意向调查</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
  <link rel="stylesheet" href="/Scripts/css/font-awesome.min.css">
  <link rel="stylesheet" href="/Scripts/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="/Scripts/css/demo.css" />
  <link rel="stylesheet" href="/Scripts/css/templatemo-style.css">
  
  <script type="text/javascript" src="/Scripts/js/modernizr.custom.86080.js"></script>
		
	</head>

	<body>

			<div id="particles-js"></div>
		
			<ul class="cb-slideshow">
	            <li></li>
	            <li></li>
	            <li></li>
	            <li></li>
	            <li></li>
	            <li></li>
	        </ul>

			<div class="container-fluid">
				<div class="row cb-slideshow-text-container ">
					<div class= "tm-content col-xl-6 col-sm-8 col-xs-8 ml-auto section">
					<header class="mb-5"><h1>专业实习</h1></header>
					<P class="mb-5">2018级-实习意向调查</P>
					
                    <form action="#" runat="server" method="get" class="subscribe-form">
               	    	<div class="row form-section">

							<div class="col-md-7 col-sm-7 col-xs-7">
			                      <%--<input name="" type="text" class="form-control" id="contact_email" placeholder="请输入你的专业" required/>--%>
                                
                                <asp:DropDownList ID="professional" class="form-control" Height="60px"    runat="server" ></asp:DropDownList>
				  			</div>
							<div class="col-md-5 col-sm-5 col-xs-5">
								<%--<button type="submit" class="tm-btn-subscribe">开始</button>--%>
                                
                                <asp:Button ID="submit" class="tm-btn-subscribe" Width="100px" runat="server" Text="开始" BackColor="#15BBF9" ForeColor="White" OnClick="submit_Click"  />
                            </div>
						
						</div>
                    </form>
                    
					<div class="tm-social-icons-container text-xs-center">
	                    <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
	                    <a href="#" class="tm-social-link"><i class="fa fa-google-plus"></i></a>
	                    <a href="#" class="tm-social-link"><i class="fa fa-twitter"></i></a>
	                    <a href="#" class="tm-social-link"><i class="fa fa-linkedin"></i></a>
	                </div>

					</div>
				</div>	
				<div class="footer-link">
					<p>Copyright © 2018
                    - Design: <a rel="nofollow" href="#" target="_parent">CodePlay</a></p>
                    <p><a href="https://www.bigbugcc.com/" target="_blank">BigBug</a> - Collect from</p>
				</div>
			</div>	
	</body>
   
	<script type="text/javascript" src="/Scripts/js/particles.js"></script>
	<script type="text/javascript" src="/Scripts/js/app.js"></script>

</html>
