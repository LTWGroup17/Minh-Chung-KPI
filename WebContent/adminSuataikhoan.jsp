<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="java.sql.*"%>
<%@ page language="java" import = "connect.*,java.util.*" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Sửa Tài Khoản</title>
     <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css">

fieldset {
    border: thin solid #ccc; 
    border-radius: 4px;
    padding: 20px;
    padding-left: 40px;
    background: #fbfbfb;
}
legend {
   color: #678;
}
label small {
    color: #678 !important;
}
span.req {
    color:maroon;
    font-size: 112%;
}

</style>
<body>
<div class="container">
    <div class="row centered-form">
    </div>
        <div  class="col-md-6 col-md-offset-3" style="top:30px">
        	<%
        		Connection con = DBConnect.getConnection();
        		int id = Integer.parseInt(request.getParameter("id"));
        		String query = "select * from user where user= '"+id+"'";
        		Statement stmt = con.createStatement();

    			ResultSet rs = stmt.executeQuery(query);
    			if(rs.next()){
        	
        	%>
            <form action="EditUserServlet?id=<%=rs.getInt("user") %>" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center">Đổi thông tin tài khoản<span class="req"><small></small></span></legend>


            <div class="form-group">     
                <label for="firstname"><span class="req">* </span> Họ Tên: </label>
                    <input class="form-control" type="text" name="fullname" required value="<%=rs.getString("ten")%>"/> 
                        <div id="errFirst"></div>    
            </div>

            <div class="form-group">
                <label for="email"><span class="req">* </span> Email: </label> 
                    <input class="form-control" required type="email" name="email" onchange="email_validate(this.value);" value="<%=rs.getString("email")%>" />   
                        <div class="status" id="status"></div>
            </div>
            <div class="form-group">
                <label for="text"><span class="req">* </span> Ngày Sinh: </label> 
                    <input class="form-control" required type="text" name="birthday" onchange="email_validate(this.value);" value="<%=rs.getString("nsinh") %>" />   
                        <div class="status" id="status"></div>
            </div>
            <div class="form-group">
                <label for="text"><span class="req">* </span> Số điện thoại: </label> 
                    <input class="form-control" required type="text" name="phone" onchange="email_validate(this.value);" value="<%=rs.getString("tel") %>" />   
                        <div class="status" id="status"></div>
            </div>
            <div class="form-group">
            	<label for="text"> Quyền: </label> 
            	<div class="radio">
            		<input type="radio" value="1" name="role" 
            		<%if(rs.getInt("roleid") == 1){ %>
            			checked
            		<%} %>
            		
            		> Admin
	            </div>
	            <div class="radio">
	            	<input type="radio" value="2" name="role"
	            	<%if(rs.getInt("roleid") == 2){ %>
            			checked
            		<%} %>
	            	
	            	> Người Nhập
            	</div>
            	
            	<div class="radio">
            		<input type="radio" value="3" name="role"
            		<%if(rs.getInt("roleid") == 3){ %>
            			checked
            		<%} %>
            		> Người giao
	            </div>
	            <div class="radio">
	            	<input type="radio" value="4" name="role"
	            	<%if(rs.getInt("roleid") == 4){ %>
            			checked
            		<%} %>
	            	
	            	> Người Quy Định
            	</div>
            	<div class="radio">
	            	<input type="radio" value="5" name="role"
	            	<%if(rs.getInt("roleid") == 5){ %>
            			checked
            		<%} %>
	            	> Người Kiểm Tra
            	</div>
            </div>
            
            <div></div>

            <div class="form-group">
                <input class="btn btn-success" type="submit" name="submit_reg" value="Sửa tài khoản">
                <a href="admindangnhap.jsp" class="btn btn-success" type="submit" >Hủy</a>
            </div> 
            </fieldset>
            </form><!-- ends register form -->
			<%} %>
			<script type="text/javascript">
			  document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
			</script>
        </div><!-- ends col-6 -->
    </div>


</body>
<script type="text/javascript">
 
function validatephone(phone) 
{
    var maintainplus = '';
    var numval = phone.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
    phone.value = maintainplus + curphonevar;
    var maintainplus = '';
    phone.focus;
}
// validates text only
function Validate(txt) {
    txt.value = txt.value.replace(/[^a-zA-Z-'\n\r.]+/g, '');
}
// validate email
function email_validate(email)
{
var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;

    if(regMail.test(email) == false)
    {
    document.getElementById("status").innerHTML    = "<span class='warning'>Email address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("status").innerHTML = "<span class='valid'>Thanks, you have entered a valid Email address!</span>"; 
    }
}
// validate date of birth
function dob_validate(dob)
{
var regDOB = /^(\d{1,2})[-\/](\d{1,2})[-\/](\d{4})$/;

    if(regDOB.test(dob) == false)
    {
    document.getElementById("statusDOB").innerHTML  = "<span class='warning'>DOB is only used to verify your age.</span>";
    }
    else
    {
    document.getElementById("statusDOB").innerHTML  = "<span class='valid'>Thanks, you have entered a valid DOB!</span>";   
    }
}
// validate address
function add_validate(address)
{
var regAdd = /^(?=.*\d)[a-zA-Z\s\d\/]+$/;
  
    if(regAdd.test(address) == false)
    {
    document.getElementById("statusAdd").innerHTML  = "<span class='warning'>Address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("statusAdd").innerHTML  = "<span class='valid'>Thanks, Address looks valid!</span>";    
    }
}

</script>
</html>