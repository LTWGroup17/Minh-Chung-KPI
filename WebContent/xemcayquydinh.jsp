
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/ltw_kpi" user="root" password="1234567" />
<sql:query var="items1"
	sql="SELECT tenmucmc FROM mucminhchung where idroot = 0" />
<div>
	<h4>Cây Minh Chứng</h4>
	<div class="row">
		<c:forEach items="${items1.rowsByIndex}" var="row">
			<c:forEach items="${row}" var="col1">
				<div id="left" class="span3">
					<ul id="menu-group-1" class="nav menu">
						<li class="item-1 deeper parent active"><a class="" href="#">
								<span data-toggle="collapse" data-parent="#menu-group-1"
								href="#sub-item-1" class="glyphicon glyphicon-folder-open"></span>
								<span class="lbl">${col1 }</span>
						</a> <sql:query var="items11"
								sql="SELECT tenmucmc FROM mucminhchung where idroot = 1" /> <c:forEach
								items="${items11.rowsByIndex}" var="row">
								<c:forEach items="${row}" var="col11">
									<ul class="children nav-child unstyled small collapse"
										id="sub-item-1">
										<li class="item-2 deeper parent"><a class="" href="#">
												<span data-toggle="collapse" data-parent="#menu-group-1"
												href="#sub-item-2" class="glyphicon glyphicon-menu-down"></span>
												<span class="lbl"></span> <span
												class="glyphicon glyphicon-ok" aria-hidden="true">
													${col11 }</span>
										</a>
											<ul class="children nav-child unstyled small collapse"
												id="sub-item-2">
												<li class="item-3"><a class="" href="#"> <span
														class="glyphicon glyphicon-info-sign"><i
															class="icon-play"></i></span> <span class="lbl">Tên:</span>
												</a></li>
												<li class="item-4"><a class="" href="#"> <span
														class="sign"><i class="icon-play"></i></span> <span
														class="lbl">Mô tả</span>
												</a></li>
												<li class="item-5"><a class="" href="#"> <span
														class="sign"><i class="icon-play"></i></span> <span
														class="lbl">Người Nhâp:</span>
												</a></li>
												<li class="item-5"><a class="" href="#"> <span
														class="sign"><i class="icon-play"></i></span> <span
														class="lbl">Các File đính kèm:</span>
												</a></li>
												<li class="item-6"><a class="" href="#"> <span
														class="sign"><i class="icon-play"></i></span> <span
														class="lbl">Tình trạng:</span>
												</a></li>
											</ul>
									</ul>
								</c:forEach>
							</c:forEach>
				</div>
			</c:forEach>
		</c:forEach>
	</div>
	<a class="btn btn-primary" href="tree.jsp"> chỉnh sửa </a>
</div>