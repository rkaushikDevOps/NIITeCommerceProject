<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Sign Up Now</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .jumbotron
{
	background:url("<c:url value='/images/registerbg.jpg'/>") center no-repeat;
	background-size:100% 100%;
}
	table 
	{
		border-collapse: separate;
		border-spacing: 50px 0;
		border: 1px solid black;
		border-radius:15px 15px 15px 15px;
	}

	td 
	{
		padding: 10px 0;
	}
	input:hover
	{
	background:#ffff99;
	border: 3px solid #cce6ff;
	color:blue;
	}
	select:hover
	{
	background:#cce6ff;
	border:3px solid #ffff99;
	}
  </style>
  </head>
  <body>
<div class="container-fluid">
<div class="jumbotron">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
  <table class=" table-responsive">
  <div class="form-group">
<form action="" method="post" name="register"> 
<center><strong><h2>Welcome New User<h2></strong></center>
<small class="text-danger"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Note:Field With * Are Mandatory)</b></small>
<tr>
<td><strong>Name<sup>*</sup></strong></td>
</tr>
<tr>
<td><input type="text" id="fname" class="form-control" name="first" placeholder="first" onblur="verifyname()" required/></td>
<td><input type="text" id="lname" class="form-control" name="last" placeholder="last" required/></td></tr>
<tr>
<tr>
<td><span id="fnamerr" style="color:red;"></span></td>
</tr>
<td><strong>Gender<sup>*</sup></strong></td>
</tr>
<tr>
<td>
<select class="form-control" id="ugender" name="gender" onblur="verifygender()" required>
<option disabled selected value> -- I am -- </option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
</td>
<td><span id="gendererr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Email Id<sup>*</sup></strong></td>
</tr>
<tr>
<td><input type="email" class="form-control" id="email" placeholder="abc@stopover.com" onblur="verifyemail()" required/></td>
<td><span id="emailerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Password<sup>*</sup></strong></td>
</tr>
<tr>
<td><input type="password" class="form-control" id="pwd" onblur="verifypwd()" required/></td>
<td><span id="pwderr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Confirm Password<sup>*</sup></strong></td>
</tr>
<tr>
<td><input type="password" class="form-control" id="cnfpwd" onblur="checkpwd()" required/></td>
<td><span id="pwderrs" style="color:red;"></span></td>
</tr>
<tr>
<tr>
<td><strong>First Cry On<sup>*</sup></strong></td>
</tr>
<tr>
<td><input type="date" class="form-control" id="dob" onblur="verifydob()" required/></td>
<td><span id="doberr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Mobile<sup>*</sup></strong></td>
</tr>
<tr>
<td><input type="tel" class="form-control" id="phone" placeholder="99xxxxxxxx" maxlength="10" onblur="verifyphn()" required/></td>
<td><span id="phnerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Address<sup>*</sup></strong></td>
<td><strong>Pin Code<sup>*</sup></strong></td>
</tr>
<tr>
<td><input type="text" class="form-control" id="address" onblur="verifyadd()" required/></td>
<td><input type="number" class="form-control" id="pin" maxlength="6" onblur="verifypin()" required/></td>
</tr>
<tr>
<td><span id="adderr" style="color:red;"></span></td>
<td><span id="pinerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>State</strong></td>
</tr>
<tr>
<td><input type="text" class="form-control" id="state" placeholder="I Live In..." onblur="verifystate()" required/></td>
<td><span id="staterr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Country</strong></td>
</tr>
<tr>
<td>
<select class="form-control" id="country" onblur="verifycntry()" required>
<option disabled selected value> -- I am From -- </option>
	<option value="101">Afghanistan</option>
	<option value="102">Alaska</option>
	<option value="103">Antartica</option>
	<option value="104">Austria</option>
	<option value="105">America</option>
	<option value="106">Australia</option>
	<option value="107">China</option>
	<option value="108">Dubai</option>
	<option value="109">Iceland</option>
	<option value="110">India</option>
	<option value="111">Ireland</option>
	<option value="112">Japan</option>
	<option value="113">New Zealand</option>
	<option value="114">United Kingdom</option>
</select>
</td>
<td><span id="cntryerr" style="color:red;"></span></td>
</tr>
<tr>
<td><input type="reset" class="btn btn-primary btn-lg" name="reset" value="Reset" style="width:180px;float:left;"></td>
<td><input type="submit" class="btn btn-primary btn-lg" name="register" value="Sign Up" style="width:180px;float:right;"></td>
</tr>
</form>
</div>
</table>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</div>
<script src="<c:url value='/Javascript/verify.js'/>" type="text/javascript"></script>
</body>
</html>