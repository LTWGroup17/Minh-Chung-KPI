<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Người Giao Minh Chứng</title>
	<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	   <link rel="stylesheet" href="css/nguoigiao.css">

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
<body onload="onClickTab('xemcay.jsp')">
	 <div class="container">
         <img src="SPKT.jpg" width="100%">
         <div class="row">
             <div class="col-xs-12">
                <a href="trangchu6.jsp" >Trang chủ</a>

                <a href="trangchu6.jsp" class="btn btn-primary btn-sm pull-right" type="button" id="btnShowModal">Thoát</a>
         </div>
         </div>
       <br>
    <div class="row content">
        <div class="col-sm-3 sidenav">
         <nav class="nav">
            <ul class="nav tabs">
              <li onclick="onClickTab('xemcay.jsp')" class="active"><a href="#" data-toggle="tab">Xem Minh Chứng</a></li>          	
              <li onclick="onClickTab('nguoigiaophancong.jsp')" class=""><a href="#" data-toggle="tab">Phân Công Nhập Minh Chứng</a></li>    
              <li onclick="onClickTab('tim1.jsp')" class=""><a href="#" data-toggle="tab">Tìm Kiếm</a></li>                            
             </ul>
          </nav>

        </div>
        <div class="col-sm-9">
        <div id="menu-content"></div>
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
       
        
</body>
<footer style="background-color: rgb(83, 163, 163); height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff" >
  <h5> © 2016 Website quản lý minh chứng KPI - Group 17</h5> </footer>
</html>
