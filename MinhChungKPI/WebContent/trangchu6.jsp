<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Trường đại học sư phạm kỹ thuật tp HCM - Minh Chứng KPI</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>



<style type="text/css">
.container {
	background:
		url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png');
	background-repeat: no-repeat;
	background-size: cover;
	height: 700px
}
</style>
</head>
<body>
	<div class="container">
		<br>
		<div class="row">

			<div class="col-xs-12">
				<img src="SPKT.jpg" width="100%">

				<div style="text-align: center; margin-top: 100px;">
					<button class="btn btn-primary" style="margin: 0 auto;"
						type="button" id="btnShowModal">Đăng Nhập Tài Khoản</button>
				</div>


				<div class="modal fade" data-ketboard="false" data-backdrop="static"
					id="loginModal" tabindex="1">
					<div class="modal-dialog modal-body">
						<div class="modal-content">
							<div class="modal-header">
								<button class="close" data-dismiss="modal">&times;</button>
								<div class="panel panel-default">
									<div align="center" class="panel-heading">
										<h3>Đăng Nhập</h3>

									</div>
								</div>
							</div>
							<form action="LoginServlet" method="post">
								<div class="modal-body" style="padding: 10px">
									<div class="form-group">
										<input type="radio" name="gender" value="2"
											onclick="nmc()"> Giảng Viên <input type="radio"
											name="gender" value="1" onclick="adm()"> Admin <input
											type="radio" name="gender" value="4" onclick="qdmc()">
										Người Quy Định <input type="radio" name="gender"
											value="3" onclick="gmc()"> Người Giao <input
											type="radio" name="gender" value="5" onclick="ktmc()">
										Người Kiểm Tra
									</div>
									<div class="form-group">
										<label for="inputUsername">Username</label> <input type="text"
											name="username" id="inputUsername"
											placeholder="Login Username" class="form-control">
									</div>
									<div class="form-group">
										<label for="inputPass">Password</label> <input type="Password"
											name="password" id="inputPass" placeholder="Login Password"
											class="form-control">
									</div>

								</div>
								<div class="modal-footer">
									<button class="btn btn-primary" type="submit">Đăng
										nhập</button>
									<button class="btn btn-primary" type="button" id="btnHideModal">Đóng</button>
								</div>
							</form>
						</div>
					</div>
				</div>


			</div>
		</div>


	</div>
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
		style="background-color: rgb(83, 163, 163); min-height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff">
	<h5>© 2016 Website quản lý minh chứng KPI - Group 17</h5>
</body>
</html>