<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
<%@ page language="java" import = "connect.*,java.util.*" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Người Kiểm tra</title>
		<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/treeview.css">
	   <link rel="stylesheet" href="css/nguoinhap.css">
	   
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/main-style.css" rel="stylesheet" />
<link rel="styelsheet" href="assets/treeview/style.css">
</head>
<script type="text/javascript">
  $(document).ready(function(){
    $('.navbar-nav li').click(function(e) {
      e.preventDefault();
      $('li').removeClass('active');
      $(this).addClass('active');
    });
  });

  function onClickTab(url){
  		
      var xhttp;
      if (window.XMLHttpRequest) {
        // code for modern browsers

        xhttp = new XMLHttpRequest();
      } else {
        // code for IE6, IE5

        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          document.getElementById("menu-content").innerHTML = this.responseText;
        }
      };
      xhttp.open("GET", url, true);
      xhttp.send();
    }

    function onClickPill(url){
    var xhttp;
    if (window.XMLHttpRequest) {
      // code for modern browsers
      xhttp = new XMLHttpRequest();
    } else {
      // code for IE6, IE5
      xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("left-menu-content").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", url, true);
    xhttp.send();
  }
  // phần cây
        !function ($) {
    
    // Le left-menu sign
    /* for older jquery version
    $('#left ul.nav li.parent > a > span.sign').click(function () {
        $(this).find('i:first').toggleClass("icon-minus");
    }); */
    
    $(document).on("click","#left ul.nav li.parent > a > span.sign", function(){          
        $(this).find('i:first').toggleClass("icon-minus");      
    }); 
    
    // Open Le current menu
    $("#left ul.nav li.parent.active > a > span.sign").find('i:first').addClass("icon-minus");
    $("#left ul.nav li.current").parents('ul.children').addClass("in");

}(window.jQuery);
</script>
<body onload="onClickTab('xemcaynguoikt.jsp')">
	<div class="container" style=" background: url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png');
  background-repeat:no-repeat;
  background-size:cover;
height: 100%">
         <img src="SPKT.jpg" width="100%">
		<div class="row">
			<div class="col-md-9">
				<a href="nguoiktmoi.jsp">Trang chủ</a>
			</div>
			<div class="col-md-3">
				 <a><%=session.getAttribute("ten") %></a>
				<a href="LogoutServlet"
					class="btn btn-primary btn-sm pull-right" type="button"
					id="btnShowModal"> Thoát</a>
			</div>
		</div>
       <br>
       <br>
    <div class="row content">
        <div class="col-sm-3 sidenav">
         <nav class="nav-sidebar">
            <ul class="nav tabs">
              <li  onclick="onClickTab('xemcaynguoikt.jsp')" class="active"><a href="#" data-toggle="tab">Xem Cây Minh Chứng</a></li>
              <li  onclick="onClickTab('tim1.jsp')" class=""><a href="#" data-toggle="tab">Tìm Kiếm</a></li>                            
             </ul>
          </nav>

        </div>
        <div class="col-sm-9">
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
				            			<%}else {%> 
				            			<span style="color:red" class="glyphicon glyphicon-remove" aria-hidden="true"></span>
										<%} %>
				            				<%
				            				int subid = rs1.getInt("idmucmc");
									         String query2 ="SELECT * FROM minhchung where idmucmc= '"+subid+"'";
									         
									         Statement stmt2 = con.createStatement();
									         ResultSet rs2 = stmt2.executeQuery(query2);
									           if(rs2.next()){
									           
									           
									         %>	    
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
   </div>
   <script type="text/javascript">
   
    $(document).ready(function(){
      $('#btnShowModal').click(function(){
        $('#loginModal').modal('show');
      });
       $('#btnRegisterModal').click(function(){
        $('#RegisterModal').modal('show');
      });
       $('#btnHideModal').click(function(){
        $('#loginModal').modal('hide');
      });
       $('#btnHideModal1').click(function(){
        $('#RegisterModal').modal('hide');
      });
    });

  function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
  </script>
  <script src="assets/js/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/tree.js"></script>
	<script src="assets/treeview/script.js"></script>
   <footer style="background-color: rgb(83, 163, 163); min-height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff" >
  <h5> © 2016 Website quản lý minh chứng KPI - Group 17</h5></footer>

</body>
</html>