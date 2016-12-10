<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Trường đại học sư phạm kỹ thuật tp HCM - Minh Chứng KPI</title>
<meta charset="utf-8">
<link type="text/css" href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="assets/font-awesome.min.css">


<style type="text/css">
.container {
	background:
		url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png');
	background-repeat: no-repeat;
	background-size: cover;
	height: 700px;
	width:100%;
}

</style>
</head>
<body>
	<div class="container">
		<br>
		<div class="row">

			<div class="col-xs-12">
				<img src="SPKT.jpg" width="100%" class="img-responsive" style="margin:0px">

				<div style="text-align: center; margin-top: 100px;">
					<button class="btn btn-primary" style="margin: 0 auto;"
						type="button" id="btnShowModal">Đăng Nhập Tài Khoản</button>
				</div>


				<div class="modal fade" data-ketboard="false" data-backdrop="static"
					id="loginModal" tabindex="1">
					<div class="modal-dialog modal-body">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div align="center"><h4 class="modal-title"><b>Đăng nhập</b></h4></div>
							</div>
							<form action="LoginServlet" method="post">
								<div class="modal-body" style="padding: 10px">
									<div class="form-group">
										<input type="radio" name="role" value="2" checked> Giảng Viên 
										<input type="radio" name="role" value="1"> Admin 
										<input type="radio" name="role" value="4"> Người Quy Định 
										<input type="radio" name="role" value="3"> Người Giao 
										<input type="radio" name="role" value="5"> Người Kiểm Tra
									</div>
									<div class="form-group">
										<label for="inputUsername">Username</label> 
										<input type="text" name="username" id="inputUsername" placeholder="Login Username" class="form-control">
									</div>
									<div class="form-group">
										<label for="inputPass">Password</label> 
										<input type="Password" name="password" id="inputPass" placeholder="Login Password" class="form-control">
									</div>

								</div>
								<div class="modal-footer">
									<button class="btn btn-success" type="submit">Đăng nhập</button>
									<button class="btn btn-default" type="button" id="btnHideModal">Đóng</button>
								</div>
							</form>
						</div>
					</div>
				</div>


			</div>
		</div>


	</div>
	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#btnShowModal').click(function() {
				$('#loginModal').modal('show');
			});
			$('#btnRegisterModal').click(function() {
				$('#RegisterModal').modal('show');
			});
			$('#btnHideModal').click(function() {
				$('#loginModal').modal('hide');
			});
			$('#btnHideModal1').click(function() {
				$('#RegisterModal').modal('hide');
			});
		});
	</script>
	<footer
		style="background-color: rgb(83, 163, 163); height: 120px; padding-top: 25px;padding-left:40%; ;color: #fff">
	<h5>© 2016 Website quản lý minh chứng KPI - Group 17</h5>
	</footer>
</body>
</html>