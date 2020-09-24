<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="information.aspx.cs" Inherits="QuestionDemo_II.information" %>

<!doctype html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png" />
	<link rel="icon" type="image/png" href="/assets/img/favicon.png" />
	<title>完善信息</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    
    <link href="Scripts/css/sweetalert2.css" rel="stylesheet" />
    <link href="Scripts/css/sweetalert2.min.css" rel="stylesheet" />
    <script src="Scripts/js/sweetalert2.min.js"></script>
    <script src="Scripts/js/sweetalert2.js"></script>
	<!-- CSS Files -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="/assets/css/paper-bootstrap-wizard.css" rel="stylesheet" />

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="/assets/css/demo.css" rel="stylesheet" />

	<!-- Fonts and Icons -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
	<link href="/assets/css/themify-icons.css" rel="stylesheet">
</head>

<body>
	<div class="image-container set-full-height" style="background-image: url('/assets/img/paper-1.jpeg')">
	    <!--   Creative Tim Branding   -->
	    <a href="#">
	         <div class="logo-container">
	            <div class="logo">
	                <img src="/assets/img/new_logo.png">
	            </div>
	            <div class="brand">
	                Life is fantastic
	            </div>
	        </div>
	    </a>

		<!--  Made With Paper Kit  -->
		<a href="#/paper-kit?ref=paper-bootstrap-wizard" class="made-with-pk">
			<div class="brand">GO</div>
			<div class="made-with">CodePlay社团<strong>-Creation</strong></div>
		</a>

	    <!--   Big container   -->
	    <div class="container">
	        <div class="row">
		        <div class="col-sm-8 col-sm-offset-2">

		            <!--      Wizard container        -->
		            <div class="wizard-container">

		                <div class="card wizard-card" data-color="orange" id="wizardProfile">
		                    <form  action="data" method="post">
		                    	<div class="wizard-header text-center">
		                        	<h3 class="wizard-title"><asp:Label ID="pro" class="wizard-title"  runat="server" Text=""></asp:Label>-实习意向调查</h3>
                                    
									<p class="category">This information will let us know more about you.</p>
		                    	</div>

								<div class="wizard-navigation">
									<div class="progress-with-circle">
									     <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="3" style="width: 21%;"></div>
									</div>
									<ul>
			                            <li>
											<a href="#about" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-user"></i>
												</div>
												About
											</a>
										</li>
			                            <li>
											<a href="#account" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-settings"></i>
												</div>
												Work
											</a>
										</li>
			                            <li>
											<a href="#address" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-map"></i>
												</div>
												Other
											</a>
										</li>
			                        </ul>
								</div>
		                        <div class="tab-content">
		                            <div class="tab-pane" id="about">
		                            	<div class="row">
											<h5 class="info-text"> 请完善你的个人信息</h5>

											<div class="col-sm-4 col-sm-offset-1">
												<div class="picture-container">
													<div class="picture">
														<img src="../assets/img/default-avatar.jpg" class="picture-src" id="wizardPicturePreview" title="" />
														
													</div>
													<h6>Picture</h6>
												</div>
											</div>
											<div class="col-sm-6">

												<div class="form-group">
													<label>学号</label>
													<input name="stuid" id="stuid" type="number" oninput="if(value.length>11) value=value.slice(0,11)" class="form-control">
												</div>

												<div class="form-group">
													<label>姓名</label>
													<input name="name" id="name" type="text" class="form-control" placeholder="name">
												</div>

												<div class="form-group">
													<label>性别</label>
		                                            <select name="gender" id="gender" class="form-control">
                                                        <option value=""> 请选择 </option>
		                                                <option value="男"> 男 </option>
														<option value="女"> 女 </option>
		                                            </select>
												</div>

												<div class="form-group">
													<label>名族</label>
													<input name="nationality" id="nationality" type="text" class="form-control" placeholder="">
												</div>

												<div class="form-group">
													<label>联系方式</label>
													<input name="number" id="number" oninput="if(value.length>11) value=value.slice(0,11)" type="number" class="form-control">
												</div>

											</div>
											<%--<div class="col-sm-10 col-sm-offset-1">
												<div class="form-group">
													<label>Email</label>
													<input name="email" type="email" class="form-control" placeholder="">
												</div>
											</div>--%>
										</div>
		                            </div>
		                            <div class="tab-pane" id="account">
		                                <h5 class="info-text"> What are you doing?</h5>
		                                <%--<div class="row">
		                                    <div class="col-sm-8 col-sm-offset-2">

		                                        <div class="col-sm-4">
		                                            <div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="jobb" value="Design">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-paint-roller"></i>
															<p>自主安排</p>
		                                                </div>
		                                            </div>
		                                        </div>

		                                        <div class="col-sm-4">
		                                            <div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="jobb" value="Code">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-pencil-alt"></i>
															<p>学校安排</p>
		                                                </div>
		                                            </div>
		                                        </div>

		                                    </div>

										</div>--%>
                                        <div class="col-sm-5">
											<div class="form-group">
												<label>实习安排</label><br>
												<select name="shixianpai" id="shixianpai" class="form-control">
                                                    <option value="">请选择</option>
													<option value="自主安排">自主安排</option>
													<option value="学校安排">学校安排</option>
												</select>
											</div>
										</div>

										<div class="col-sm-5">
											<div class="form-group">
												<label>实习地点</label><br>
												<select name="shixididian" id="shixididian" class="form-control">
                                                    <option value="">请选择</option>
													<option value="省内">云南省内</option>
													<option value="省外">云南省外</option>
												</select>
											</div>
										</div>
		                            </div>
		                            <div class="tab-pane" id="address">
		                                <div class="row">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text">实习待遇</h5>
		                                    </div>
		                                    <div class="col-sm-5">
		                                        <div class="form-group">
		                                            <label>薪资待遇</label><br>
		                                            <select name="money" id="money" class="form-control">
                                                        <option value=""> 请选择 </option>
		                                                <option value="0"> 800元 </option>
														<option value="1"> 800元 - 1500元 </option>
														<option value="2"> 1500元以上 </option>
														
		                                            </select>
		                                        </div>
		                                    </div>
		                                    
											<div class="col-sm-5">
		                                        <div class="form-group">
		                                            <label>住宿安排</label><br>
		                                            <select name="zhusu" id="zhusu" class="form-control">
                                                        <option value=""> 请选择 </option>
		                                                <option value="需要"> 需要 </option>
		                                                <option value="不需要"> 不需要 </option>
		                                            </select>
		                                        </div>
		                                    </div>
											
											<div class="col-sm-5" id="description">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-1">
														<div class="form-group">
															<label>对本次实习你有什么意见或者建议</label>
															<textarea class="form-control" id="msg" placeholder="" rows="5"></textarea>
														</div>
													</div>
												
												</div>
											</div>

											
		                                </div>
		                            </div>
		                        </div>
		                        <div class="wizard-footer">
		                            <div class="pull-right">
		                                <input type='button'  class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='Next' />

		                                <input id="btnsubmit" type='button' class='btn btn-finish btn-fill btn-warning btn-wd ' value='Finish' />
		                            </div>

		                            <div class="pull-left">
		                                <input type='button' class='btn btn-previous btn-default btn-wd' name='previous' value='Previous' />
		                            </div>
		                            <div class="clearfix"></div>
		                        </div>
		                    </form>
		                </div>
		            </div> <!-- wizard container -->
		        </div>
	    	</div><!-- end row -->
		</div> <!--  big container -->

	    <div class="footer">
	        <div class="container text-center">
	             made with <i class="fa fa-heart heart"></i> by <a href="#">CodePlay</a> - Collect from <a href="https://www.bigbugcc.com/" target="_blank">BigBug</a>
	        </div>
	    </div>
	</div>

</body>

	<!--   Core JS Files   -->
	<script src="/assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
	<script src="/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
	<script src="/assets/js/paper-bootstrap-wizard.js" type="text/javascript"></script>
	<script src="/assets/js/jquery.validate.min.js"  charset="gb2312"  type="text/javascript"></script>
    <script type="text/javascript">
            function aler(va) {
                if (va == "success") {
                    Swal.fire({
                        title: '提交成功',
                        text: "信息保存成功",
                        type: 'success',     
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.value) {
                            document.location.href = "/End.aspx?method=success"
                        }
                    })
                    //document.location.href = "/End.aspx"
                  
                }
                if (va == "failure") {
                    Swal.fire({
                        title: '操作失败',
                        text: "请稍后再试",
                        type: 'error',
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: '继续'
                    }).then((result) => {
                        if (result.value) {
                            document.location.href = "/End.aspx?method=failure"
                        }
                    })
                }
                if (va == "msgerr") {
                   
                    Swal.fire({
                        title: '信息未完善',
                        text: "请先完善信息",
                        type: 'warning',
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: '继续'
                    })
                }

                if (va == "existing") {
                    Swal.fire({
                        title: 'Warning',
                        text: "您已经提交问卷,不允许再次提交!",
                        type: 'error',
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: '退出'
                    }).then((result) => {
                        if (result.value) {
                            document.location.href = "/End.aspx?method=existing"
                        }
                    })
                }
            }
     
    </script>
   

</html>
