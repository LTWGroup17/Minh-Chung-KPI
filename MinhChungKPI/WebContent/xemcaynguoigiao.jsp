<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<!-- Core CSS - Include with every page -->
<link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href="assets/plugins/pace/pace-theme-big-counter.css"
	rel="stylesheet" />
<link href="MyCustom.css" rel="stylesheet">
<link href="tree.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/main-style.css" rel="stylesheet" />

<!-- Page-Level CSS -->
<link href="assets/plugins/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>
	<h4>Cây Minh Chứng</h4>
	<div class="panel-body">
		<div class="tree">
			<ul>
				<li style="color: red"><span><i
						class="glyphicon glyphicon-folder-open"></i>Hoạt động giảng dạy</span>
					<ul>
						<li style="color: red"><span><i
								class="glyphicon glyphicon-book"></i> minh chứng 1 </span></li>
						<li style="color: red"><span><i
								class="glyphicon glyphicon-book"></i> minh chứng 2 </span></li>

					</ul></li>
				<li><span><i class="glyphicon glyphicon-folder-open"></i>
						Hoạt động ngoài giảng dạy</span>
					<ul>
						<li><span><i class="glyphicon glyphicon-book"></i>
								minh chứng 1</span>
							<button type="button" class="btn btn-info btn-sm"
								style="margin-left: 30px" data-toggle="modal"
								data-target="#myModal">Giao Minh Chứng</button></li>
						<li><span><i class="glyphicon glyphicon-book"></i>
								minh chứng 2</span>
							<button type="button" class="btn btn-info btn-sm"
								style="margin-left: 30px" data-toggle="modal"
								data-target="#myModal">Giao Minh Chứng</button></li>
						<li><span><i class="glyphicon glyphicon-book"></i>
								minh chứng 3</span>
							<button type="button" class="btn btn-info btn-sm"
								style="margin-left: 30px" data-toggle="modal"
								data-target="#myModal">Giao Minh Chứng</button></li>

					</ul></li>
			</ul>
		</div>

	</div>

	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Giao Minh Chứng</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Người Nhập Minh Chứng</label> <input
							class="form-control" placeholder="Tên Người Nhập" id="two"
							required type="text" title="không được bỏ trống"
							x-moz-errormessage="không bỏ trống" />
					</div>
					<br>
					<div class="row">
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" onclick="alert('Đã Gửi Thành Công')">Xác
								Nhận</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Hủy</button>
						</div>
					</div>

				</div>

			</div>
		</div>
</body>