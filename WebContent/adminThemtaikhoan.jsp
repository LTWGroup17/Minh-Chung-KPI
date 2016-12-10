<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Thêm Tài Khoản</title>
     <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
.container{
  background: url('http://i1280.photobucket.com/albums/a487/Ani_Mai/15_zps9qpuzjxq.png');
  width:100%;
  height:674px;
  background-repeat:no-repeat;
  background-size:cover;
    body {
    padding-top:0;
}
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
.form-control {

    width: 95%;
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
    <form action="AddUserServlet" method="post" id="fileForm" role="form">
    <div class="col-md-3">
    </div>
        <div  class="col-md-6">
            
            <fieldset><legend class="text-center">Đăng ký tài khoản<span class="req"><small></small></span></legend>

            <div class="form-group">
                <label for="username"><span class="req">* </span> User name:  <small>Vd: taikhoan</small> </label> 
                    <input class="form-control" type="text" name="username" placeholder="Nhập username" required />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group">
                <label for="password"><span class="req">* </span> Password: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" /> </p>

                <label for="password"><span class="req">* </span> Nhập lại Password: </label>
                    <input required name="re_password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter again to validate"  id="pass2" onkeyup="checkPass(); return false;" />
                        <span id="confirmMessage" class="confirmMessage"></span>
            </div>
            <div class="form-group">
            <label for="phonenumber"><span class="req">* </span> Số điện thoại: </label>
                    <input required type="text" name="phone" id="phone" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="not used for marketing"/> 
            </div>


            <div class="form-group">     
                <label for="firstname"><span class="req">* </span> Họ Tên: </label>
                    <input class="form-control" type="text" name="fullname" required /> 
                        <div id="errFirst"></div>    
            </div>
			<div class="form-group">
                <label for="text"><span class="req">* </span> Ngày Sinh: </label> 
                    <input class="form-control" required type="text" name="birthday" />   
                        <div class="status" id="status"></div>
            </div>
            <div class="form-group">
                <label for="email"><span class="req">* </span> Email: </label> 
                    <input class="form-control" required type="text" name="email" id = "email"  onchange="email_validate(this.value);" />   
                        <div class="status" id="status"></div>
            </div>
			
            <div class="form-group">
                <input class="btn btn-success" type="submit" name="submit_reg" value="Thêm tài khoản">
                <input href="admindangnhap.jsp" class="btn btn-error" type="reset"  value="Hủy">
            </div> 
            </fieldset>
            

<script type="text/javascript">
  document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
</script>
        </div><!-- ends col-6 -->
		 <div class="col-md-2 col-md-offset-1" style="margin-top:50px">
		 	<div class="form-group">
            	<label for="text"> Quyền: </label> 
            	<div class="radio">
            		<input type="radio" value="1" name="role" checked> Admin
	            </div>
	            <div class="radio">
	            	<input type="radio" value="2" name="role"> Người Nhập
            	</div>
            	
            	<div class="radio">
            		<input type="radio" value="3" name="role"> Người giao
	            </div>
	            <div class="radio">
	            	<input type="radio" value="4" name="role"> Người Quy Định
            	</div>
            	<div class="radio">
	            	<input type="radio" value="5" name="role"> Người Kiểm Tra
            	</div>
            </div>
    	</div>
    
    </div>
    </form><!-- ends register form -->


</body>
<script type="text/javascript">
    function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match"
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
} 
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