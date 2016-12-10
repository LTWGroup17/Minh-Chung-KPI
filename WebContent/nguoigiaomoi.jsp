<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
<%@ page language="java" import = "connect.*,java.util.*" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Người Giao Minh Chứng</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/treeview.css">
<link rel="stylesheet" href="css/nguoinhap.css">
	   
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/main-style.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/treeview/style.css">
<link rel="stylesheet" href="assets/css/menu-css.css">
<link rel="stylesheet" href="css/timkiem.css">
<style type="text/css">
	.footer > .container {
  padding-right: 15px;
  padding-left: 15px;
  
}
.footer{
	margin-top:300px;
   left:0px;
   bottom:0px;
}

	body{
	background: url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png');
	background-repeat:no-repeat;
	background-size: 100% 100%;
	}
	
	
</style>

</head>
<body>
	<div class="container" style="background: url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png');
  background-repeat:no-repeat;
  background-size:cover;
height: 100%;">
		<img src="SPKT.jpg" width="1366" class="img-responsive">
		<div class="row">
			<div class="col-md-9">
				<a href="nguoigiaomoi.jsp" style="margin-left: 100px">Trang chủ</a>
			</div>
			<div class="col-md-3">
				<div class="btn-group">
					<button type="button" class="btn btn-link dropdown-toggle"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<%=session.getAttribute("ten") %>
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="index.jsp">Đăng xuất</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 bhoechie-tab-container center">
				<div class="col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
					<div class="list-group">
						<a href="#" class="list-group-item active text-center">
							<h4>Xem cây minh chứng</h4>
						</a>
						<a href="#" class="list-group-item text-center">
							<h4>Tìm kiếm</h4>
						</a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
					<!-- flight section -->
					<div class="bhoechie-tab-content active">
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
	            			<li><a href="#" style="color:green"><%=rs.getString("tenmucmc") %></a>
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
				            			<%if(rs1.getString("trangthai").equals("Hoàn thành")) {%>
				            			<span style="color:green" class="glyphicon glyphicon-ok" aria-hidden="true"></span>
				            			<%}else if(rs1.getString("trangthai").equals("Đã giao")) {%>
				            			<span style="color:gray" class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>
				            			<%} else {%> 
				            			<span style="color:red" class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				            			<button type="button" class="btn btn-success btn-sm"
								style="margin-left: 30px" data-toggle="modal"
								data-target="#myModal<%=rs1.getInt("idmucmc")%>" margin-right="20px">Giao Minh Chứng</button>
										<%} %>
				            				<%
				            				int subid = rs1.getInt("idmucmc");
									         String query2 ="SELECT * FROM minhchung where idmucmc= '"+subid+"'";
									         
									         Statement stmt2 = con.createStatement();
									         ResultSet rs2 = stmt2.executeQuery(query2);
									           if(rs2.next()){
									           
									           
									         %>	    
	            						<ul>
	            							<li>Tên: </li>
	            							<li>Mô tả: <span>
	            							<%if(rs2.getString("mota") == null){ %>
												<span style="color:red">Chưa có</span>
											<%}else{ %>	            							
	            							<%=rs2.getString("mota") %></span>
	            							<%} %>
	            							</li>
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
					<!-- train section -->
					<div class="bhoechie-tab-content">
						<div align="left" class="row" style="margin-top: 30px">
	<div class="col-lg-12">
		<form>
			<input type="textsearch" id="myInput" onkeyup="myFunction()"
				placeholder="Tim Theo Ten" title="Type in a name" name="search">
		</form>
	</div>
</div>
<div>
	<table id="myTable">

		<tr class="header">
			<th>Mã minh chứng</th>
			<th>Tên minh chứng</th>
			<th>Người giao</th>
			<th>Người nhập</th>
			<th></th>
		</tr>

		<c:forEach items="${items1.rowsByIndex}" var="row">
			<tr>
				<c:forEach items="${row}" var="col">
					<td>${col}</td>
				</c:forEach>
			</tr>

		</c:forEach>


	</table>

</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	 <footer style="margin-top:400px; background-color: rgb(83, 163, 163); min-height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff" >
  <h5> © 2016 Website quản lý minh chứng KPI - Group 17</h5></footer>
 	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/menu-js.js"></script>
	<script src="assets/js/tree.js"></script>
	<script src="assets/treeview/script.js"></script>
		<%
				            				
									         String query4 ="SELECT * FROM minhchung";
									         
									         Statement stmt4 = con.createStatement();
									         ResultSet rs4 = stmt4.executeQuery(query4);
									         try{
									           while(rs4.next()){
									           
									           
									         %>
	  <div class="modal fade" id="myModal<%=rs4.getInt("idmucmc") %>" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div align="center"><h4 class="modal-title"><b>Giao Minh Chứng</b></h4></div>
				</div>
				<form method="POST" action="GiaoMinhChungServlet?id=<%=rs4.getInt("idmucmc") %>">
					<div class="modal-body">
							<div class="form-group">
						  	<label>Tên minh chứng: <%=rs4.getString("tenmucmc") %></label>
						  	<input type="hidden" value="<%=rs4.getInt("idmucmc")%>" name="idmucminhchung">
						  </div>
						  <input type="hidden" name="idmucminhchung" value="<%=rs4.getInt("idmucmc")%>">
							<div class="form-group">
						  	<label>Người nhập</label>
						    <select class="form-control" name="nguoinhap" placeholder="Chọn người nhập" name="root">
						      <%
									String query3 ="SELECT * FROM user where roleid=2";
									Statement stmt3 = con.createStatement();
									ResultSet rs3 = stmt3.executeQuery(query3);
									
									
					          %>
					          <option value="0"></option>
					          <% try{
										while(rs3.next()){%>
					          <option value="<%=rs3.getInt("user")%>"><%=rs3.getString("ten") %></option>	     
							  <%}}catch(Exception e){
								  
							  }
									%>
							</select>
						  </div>
						<div class="form-group">
							<label for="exampleInputEmail1">Hạn cuối: </label> <input
								type="date" class="form-control" name="hancuoi" id="exampleInputEmail1"
								placeholder="29/10/2016">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Ghi chú: </label> <textarea class="form-control" name="ghichu" rows="4" name="nhandien"></textarea>
								
						</div>
						<br>
						<div class="row">
							<div class="modal-footer">
								<input class="btn btn-success" type="submit" name="submit_reg" value="Xác nhận">
								<button type="button" class="btn btn-default" margin-right = 10dp
									data-dismiss="modal">Hủy</button>
							</div>
						</div>
	
					</div>
				</form>
			</div>
		</div>
		</div>
		<%}}catch(Exception e){
								  
							  }
									%>
</body>
</html>
