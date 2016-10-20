
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/MinhChungKPI" user="root"
	password="1234567" />

<sql:query var="items1"
	sql="select minhchungmuc2.mamcm2, minhchungmuc2.tenmc,NG.TenNgGiao,NN.TenNgNhan
from (select username, hoten as TenNgGiao
	  from taikhoan) as NG,(select username, hoten as TenNgNhan
							from taikhoan) as NN,  minhchungmuc2
where NG.username = minhchungmuc2.nguoigiao and NN.username = minhchungmuc2.nguoinhap" />


<link rel="stylesheet" href="css/timkiem.css">
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
<div class="modal-footer">

</div>
</div>
</div>
</div>

