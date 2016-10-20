
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/MinhChungKPI" user="root"
	password="1234567" />

<sql:query var="items1"
	sql="SELECT tenmc FROM MinhChungMuc1 where mamcm1 = 1" />
<sql:query var="items2"
	sql="SELECT tenmc FROM MinhChungMuc1 where mamcm1 = 2" />
<sql:query var="items21"
	sql="SELECT tenmc FROM MinhChungMuc2 where mamcm1 = 1" />
<sql:query var="items22"
	sql="SELECT tenmc FROM MinhChungMuc2 where mamcm1 = 2" />
<sql:query var="items321"
	sql="SELECT tenmc,mota,filedinhkem,tinhtrang FROM MinhChungMuc3 where mamcm2 = 11" />
<sql:query var="items322"
	sql="SELECT tenmc,mota,filedinhkem,tinhtrang FROM MinhChungMuc3 where mamcm2 = 21" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

<script src="script.js"></script>
</head>
<body>
	<h4>Cây Minh Chứng</h4>
	<div class="row">
		<div id="left" class="span3">
			<ul id="menu-group-1" class="nav menu">

				<li class="item-1 deeper parent active"><a class="" href="#">
						<span data-toggle="collapse" data-parent="#menu-group-1"
						href="#sub-item-1" class="glyphicon glyphicon-folder-open"></span>
						<c:forEach items="${items1.rows}" var="row1">
							<span class="lbl">${row1.tenmc}</span>
						</c:forEach>
				</a>
					<ul class="children nav-child unstyled small collapse"
						id="sub-item-1">

						<li class="item-2 deeper parent"><a class="" href="#"> <span
								data-toggle="collapse" data-parent="#menu-group-1"
								href="#sub-item-2" class="glyphicon glyphicon-menu-down"></span>
								<c:forEach items="${items21.rows}" var="row2">
									<span class="lbl">${row2.tenmc }</span>
								</c:forEach> <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
						</a>
							<ul class="children nav-child unstyled small collapse"
								id="sub-item-2">

								<li class="item-3"><a class="" href="#"> <span
										class="glyphicon glyphicon-info-sign"><i
											class="icon-play"></i></span>
											 <c:forEach items="${items321.rows}" var="row3">
											<span class="lbl">${row3.tenmc }</span></a></li>

								<li class="item-4"><a class="" href="#"> <span
										class="sign"><i class="icon-play"></i></span> <span
										class="lbl">${row3.mota}</span>
								</a></li>
								<li class="item-5"><a class="" href="#"> <span
										class="sign"><i class="icon-play"></i></span> <span
										class="lbl">${row3.filedinhkem}</span>
								</a></li>
								<li class="item-6"><a class="" href="#"> <span
										class="sign"><i class="icon-play"></i></span> <span
										class="lbl">${row3.tinhtrang}</span>

								</a></li>
								</c:forEach>
							</ul></li>
					</ul></li>


				<li class="item-1 deeper parent active"><a class="" href="#">
						<span data-toggle="collapse" data-parent="#menu-group-1"
						href="#sub-item-4" class="glyphicon glyphicon-folder-open"></span>
						<c:forEach items="${items2.rows}" var="row4">
							<span class="lbl">${row4.tenmc}</span>
						</c:forEach>
				</a>
					<ul class="children nav-child unstyled small collapse"
						id="sub-item-4">

						<li class="item-2 deeper parent"><a class="" href="#"> <span
								data-toggle="collapse" data-parent="#menu-group-1"
								href="#sub-item-3" class="glyphicon glyphicon-menu-down"></span>
								<c:forEach items="${items22.rows}" var="row5">
									<span class="lbl">${row5.tenmc }</span>
								</c:forEach> <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
						</a>
							<ul class="children nav-child unstyled small collapse"
								id="sub-item-3">

								<li class="item-7"><a class="" href="#"> <span
										class="glyphicon glyphicon-info-sign"><i
											class="icon-play"></i></span>
											 <c:forEach items="${items322.rows}" var="row6">
											<span class="lbl">${row6.tenmc }</span></a></li>

								<li class="item-8"><a class="" href="#"> <span
										class="sign"><i class="icon-play"></i></span> <span
										class="lbl">${row6.mota}</span>
								</a></li>
								<li class="item-9"><a class="" href="#"> <span
										class="sign"><i class="icon-play"></i></span> <span
										class="lbl">${row6.filedinhkem}</span>
								</a></li>
								<li class="item-10"><a class="" href="#"> <span
										class="sign"><i class="icon-play"></i></span> <span
										class="lbl">${row6.tinhtrang}</span>

								</a></li>
								</c:forEach>
							</ul></li>
					</ul></li>

			</ul>

		</div>
	</div>
</body>