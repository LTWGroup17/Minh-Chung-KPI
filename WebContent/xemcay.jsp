<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hệ thống quản lý minh chứng đảm bảo chất lượng - SPKT</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    	<link href="MyCustom.css" rel="stylesheet">
	<link href="tree.css" rel="stylesheet">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />

    <!-- Page-Level CSS -->
    <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
	<h4>Cây Minh Chứng</h4>
	                  	  <div class="panel-body">
                   	 <div class="tree">
							 <ul>
								<li style = "color: red">
					            <span><i class="glyphicon glyphicon-folder-open" ></i>Hoạt động giảng dạy</span> 
						            <ul >
						                <li style = "color : red">
						                	<span ><i class="glyphicon glyphicon-book" ></i>   minh chứng 1</span> 
						                   
						                </li>
						               <li style = "color : red">
						                	<span><i class="glyphicon glyphicon-book"></i>   minh chứng 2</span> 
						                </li>
						            
						            </ul>
						        </li>
						        <li>
						            <span><i class="glyphicon glyphicon-folder-open"></i> Hoạt động ngoài giảng dạy</span>
						            <ul>
						                <li>
						                	<span><i class="glyphicon glyphicon-book"></i> minh chứng 1</span> 
								        </li>
								        <li>
						                	<span><i class="glyphicon glyphicon-book"></i> minh chứng 2</span> 
								        </li>
								        <li>
						                	<span><i class="glyphicon glyphicon-book"></i> minh chứng 3</span> 
								        </li>
								       
								    </ul>
						        </li>
						    </ul>
						</div>
						<a class="btn btn-primary" href = "tree.jsp"> chỉnh sửa </a>
					</div>
					 
   
</body>