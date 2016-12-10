<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/nguoiquydinh.css">
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- Core CSS - Include with every page -->
   <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
   <link href="MyCustom.css" rel="stylesheet">
   <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link href="assets/css/style.css" rel="stylesheet" />
   <link href="assets/css/main-style.css" rel="stylesheet" />
   <!-- Page-Level CSS -->
   <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="css/easyTree.css">
   <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
   <!-- 	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>  -->
   <script src="js/easyTree.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
   
   <div class="row">
      <div id="left" class="span3">
         <ul id="menu-group-1" class="nav menu container">
         	<h4>Cây Minh Chứng</h4>
            <div class="row">
               <div class="col-md-12">
                  <!-- Advanced Tables -->
                  <div class="panel-group" id="accordion">
                     <div class ="panel panel-primary">
                        <div class="panel-heading">Cây minh chứng</div>
                        <div class="panel-body">
                           <div class="col-md-12" >
                              <div class="easy-tree">
                                 <ul>
                                    <li>
                                       Hoạt động giảng dạy
                                       <ul>
                                          <li>Mục minh chứng 1</li>
                                          <li>Mục minh chứng 2</li>
                                       </ul>
                                    </li>
                                    <li>
                                       Hoạt động công tác xã hội
                                       <ul>
                                          <li>Mục minh chứng 1</li>
                                          <li>Mục minh chứng 2</li>
                                       </ul>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="panel-footer">
                           <form class="form-inline col-md-12"  >
                              <button type="button" class="btn btn-primary" id="btnXacnhan" onclick="update();">Lưu</button>
                           </form>
                        </div>
                     </div>
                  </div>
                  <!--End Advanced Tables -->
               </div>
            </div>
         </ul>
      </div>
   </div>
   <script src="js/tree.js"></script>
</body>