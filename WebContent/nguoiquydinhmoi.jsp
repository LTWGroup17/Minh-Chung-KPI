<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ page import="java.sql.*"%>
<%@ page language="java" import = "connect.*,java.util.*" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Người Quy Định Minh Chứng</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/nguoiquydinh.css">
<link rel="stylesheet" href="css/treeview.css">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/main-style.css" rel="stylesheet" />
<link rel="styelsheet" href="assets/treeview/style.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<style>
	.modal-footer{
		padding:5px;
	}
</style>


</head>

<body>
	<div class="container"
		style="background: url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png'); background-repeat: no-repeat; background-size: cover; height: 100%">
		<img src="SPKT.jpg" width="100%">
		<div class="row">
			<div class="col-md-9">
				<a href="nguoiquydinhmoi.jsp" style="margin-left:100px">Trang chủ</a>
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
		<br> <br>
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<nav class="nav-sidebar">
				<ul class="nav tabs">
					<li onclick="onClickTab('xemcayquydinh.jsp')" class="active"><a
						href="#" data-toggle="tab">Xem Minh Chứng</a></li>
					<li onclick="onClickTab('tim1.jsp')" class=""><a href="#"
						data-toggle="tab">Tìm Kiếm</a></li>
				</ul>
				</nav>

			</div>
			<div class="col-sm-9">
				<div id="menu-content">
				<div class="panel panel-default">
	        <div class="panel-heading"><h4>Cây minh chứng</h4></div>
	        <div class="panel-body">
	            <!-- TREEVIEW CODE -->
	            <ul class="treeview">
	            	
	                <li><a href="#">Thư mục minh chứng</a>
	                	<%
				         Connection con = DBConnect.getConnection();
				         String query ="SELECT * FROM minhchung where idroot= 0";
				         
				         Statement stmt = con.createStatement();
				         ResultSet rs = stmt.executeQuery(query);
				           
				         %>
	                	<ul>
	                		<%
	                			try{
	                				while(rs.next()){
	                				int id = rs.getInt("idmucmc");
	                		
	                		%>
	            			<li><a href="#"><%=rs.getString("tenmucmc") %></a>
								<%
						         String query1 ="SELECT * FROM minhchung where idroot= '"+id+"'";
						         
						         Statement stmt1 = con.createStatement();
						         ResultSet rs1 = stmt1.executeQuery(query1);
						           
						           
						         %>	            				
	            				<ul>
	            					<%try{
							        	   while(rs1.next()){ 
							        	   %>
				            			<li><a href="#"><%=rs1.getString("tenmucmc") %></a>
				            				<%
				            				int subid = rs1.getInt("idmucmc");
									         String query2 ="SELECT * FROM minhchung where idmucmc= '"+subid+"'";
									         
									         Statement stmt2 = con.createStatement();
									         ResultSet rs2 = stmt2.executeQuery(query2);
									           if(rs2.next()){
									           
									           
									         %>	    
	            						<ul>
	            							<li>Tên: </li>
	            							<li>Mô tả: <span><%=rs2.getString("mota") %></span></li>
	            							<li>Người nhập: </li>
	            							<li>Các File đính kèm: </li>
	            							<li>Tình Trạng: <span><%=rs2.getString("trangthai") %></span></li>
	            						</ul>
	            						<%} %>
	            					</li>
            					
	                					
	            					<%
							       	}
		                				}catch(Exception e){
		                				
		                			}
	            					%>	
	            					
	            				</ul>
	            			
	            			</li>
	            			
	            			<%}
	                			}catch(Exception e){
	                				
	                			}
	                		%>
	            		</ul>
	            	</li>
	            </ul>
	            <!-- TREEVIEW CODE -->
	        </div>
				</div>
			</div>
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"> Thêm minh chứng</button>
		</div>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	    <form action="ThemMinhChungServlet" method="POST">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Thêm minh chứng</h4>
	      </div>
	      <div class="modal-body">
	        
			  <div class="form-group">
			    <label>Tên mục minh chứng</label>
			    <input type="text" class="form-control" name="tenmucmc" placeholder="Nhập tên mục minh chứng">
			  </div>
			  <div class="form-group">
			  	<label>Minh chứng cha</label>
			    <select class="form-control" name="root">
			      <%
						String query3 ="SELECT * FROM minhchung where idroot=0";
						Statement stmt3 = con.createStatement();
						ResultSet rs3 = stmt3.executeQuery(query3);
						
		          %>
		          <option value="0">None</option>
		          <% try{
							while(rs3.next()){%>
		          <option value="<%=rs3.getInt("idmucmc")%>"><%=rs3.getString("tenmucmc") %></option>	     
				  <%}}catch(Exception e){
					  
				  }
						%>
				</select>
			  </div>
			
	      </div>
	      <div class="modal-footer" style="padding:5px">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-primary">submit</button>
	      </div>
	      </form>
	    </div>
	  </div>
	</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/tree.js"></script>
	<script src="assets/treeview/script.js"></script>
</body>
<footer
	style="background-color: rgb(83, 163, 163); min-height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff">
<h5>© 2016 Website quản lý minh chứng KPI - Group 17</h5>
</html>