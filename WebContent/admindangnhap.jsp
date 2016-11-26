<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" import = "connect.*,java.util.*" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Người Quản Lý</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" href="assets/plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="assets/font-awesome.min.css">


<style type="text/css">
.customDiv {
	margin-left: 550px;
	
}
</style>
</head>
<style>
footer{
	top:0;
	text-align:center;
	margin-top:0;
	height:130px;
}
footer h5{
	padding-top:50px;
	vertical-align:middle
}
.container {
	background:
		url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png');
	background-repeat: no-repeat;
	background-size: cover;
	height: 700px;
	width:100%;
	height: 100%;
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

</style>
</head>
<body>

	<div class="container">
		<img src="SPKT.jpg" width="100%" height="15%" style="margin-top: 10px">
		<div class="row">
			<div class="col-md-9">
				<a href="admindangnhap.jsp" style="margin-left:100px">Trang chủ</a>
			</div>
			<div class="col-md-3">
				 <div class="btn-group">
				  <button type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <%=session.getAttribute("ten") %> <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu">
				    <li><a href="index.jsp">Đăng xuất</a></li>
				  </ul>
				</div>
			</div>
		</div>
		<h2 align="center">Danh Sách Tài Khoản</h2>
		<div class="row" style="margin-top: 50px">

			
			<div class="col-sm-10 col-sm-offset-1 table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>UserName</th>
							<th>Tên</th>
							<th>Số điện thoại</th>
							<th>Ngày Sinh</th>
							<th>Quyền</th>
							<th>Email</th>
							<th colspan="2"><a class="btn btn-link"
					href="adminThemtaikhoan.jsp">Thêm Tài Khoản</a></th>
						</tr>

					</thead>
					<%
			            		
							Connection con = DBConnect.getConnection();
							String query ="SELECT* FROM user";
							Statement stmt = con.createStatement();
							ResultSet rs = stmt.executeQuery(query);
			        		try {
			        			while(rs.next()){
			        %>
					<tbody>
						<tr>
							<td><%=rs.getString("user") %></td>
							<td><%=rs.getString("ten") %></td>
							<td><%=rs.getString("tel") %></td>
							<td><%=rs.getString("nsinh") %></td>
							<td>
								<%
								int role = rs.getInt("roleid");
								if(role == 1){ %>
									Admin
								<%}else if(role == 2){ %>
									Người Nhập
								<%}else if(role == 3){ %>
									Người tạo
								<%}else if(role==4){ %>
									Người quy định
								<%}else {%>
									Người kiểm tra
								<%} %>
							</td>
							<td><%=rs.getString("email") %></td>
							<td><a class="btn btn-link" href="adminSuataikhoan.jsp?id=<%=rs.getInt("user")%>">Edit</a></td>
							<td><a class="btn btn-link" href="DeleteUserServlet?id=<%=rs.getInt("user")%>">Delete</a></td>
						</tr>
					</tbody>
					<%}
			        		}catch(Exception e){
			        			
			        		}
					%>
					
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
	style="background-color: rgb(83, 163, 163);color: #fff">
<h5>© 2016 Website quản lý minh chứng KPI - Group 17</h5>
</footer>

<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
</html>