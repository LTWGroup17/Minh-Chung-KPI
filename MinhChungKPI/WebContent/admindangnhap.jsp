<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Người Quản Lý</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style type="text/css">
.customDiv {
	margin-left: 550px;
	margin-top: 7px;
}
</style>
</head>
<style>
.container {
	background:
		url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png');
	background-repeat: no-repeat;
	background-size: cover;
	height: 700px
}

.customList {
	height: 100%;
	width: 250px;
	background-color: silver;
	font-size: large;
	padding: 10px;
}

.content1 {
	border: : 1px solid;
	border-color: black
}

.texttable {
	width: 100px;
	color: black;
}

.table1 {
	width: 55%;
	margin-left: 50px;
}

.button {
	margin-top: 10px;
	justify-content: space-between;
}

.image1 {
	width: 100%;
	height: 60px;
}

table {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>

	<div class="container">
		<img src="SPKT.jpg" width="100%" height="15%" style="margin-top: 10px">
		<div class="row">
			<div class="col-md-9">
				<a href="admindangnhap.jsp">Trang chủ</a>
			</div>
			<div class="col-md-3">
				 <a><%=session.getAttribute("ten") %></a>
				<a href="trangchu6.jsp"
					class="btn btn-primary btn-sm pull-right" type="button"
					id="btnShowModal"> Thoát</a>
			</div>
		</div>
		<h2 align="center">Danh Sách Tài Khoản</h2>
		<div class="row" style="margin-top: 50px">

			<div class="col-sm-2 ">
				<a class="btn btn-primary" style="margin-bottom: 10px"
					href="adminThemtaikhoan.jsp">Thêm Tài Khoản</a> <a
					class="btn btn-primary" style="margin-bottom: 10px"
					href="adminSuataikhoan.jsp">Sửa Tài Khoản</a> <a
					data-toggle="modal" class="btn btn-primary"
					style="margin-bottom: 10px" href="#myModal">Xóa Tài Khoản</a>
			</div>
			<div class="col-sm-9 well">
				<table class="table" style="width: 100%">
					<thead>
						<tr>
							<c:forEach items="${items.columnNames}" var="name">
								<th>${name }</th>
							</c:forEach>
							<th>Chọn</th>
						
						</tr>

					</thead>
					<tbody>
						<c:forEach items="${items.rowsByIndex}" var="row">
							<tr>
								<c:forEach items="${row}" var="col">
									<td>${col}</td>
								</c:forEach>
								<td> <input type="radio" name="gender" value="giangvien"> </td>
							</tr>

						</c:forEach>


					</tbody>
				</table>
			</div>
			<div id="myModal" class="modal fade in">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Thông Báo</h4>
						</div>
						<div class="modal-body">
							<p>Tài khoản đã được xóa</p>
						</div>
						<div class="modal-footer">
							<div class="btn-group">
								<button class="btn btn-danger" data-dismiss="modal">
									Đóng</button>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
<br>

<footer
	style="background-color: rgb(83, 163, 163); min-height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff">
<h5>© 2016 Website quản lý minh chứng KPI - Group 17</h5>
</footer>
</html>