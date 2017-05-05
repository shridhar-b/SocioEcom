<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Raleway:500' rel='stylesheet' type='text/css'>
<link href='css/login.css' rel='stylesheet' type='text/css'>

<body>
<div class="middlePage">
<div id="errordiv" class="alert alert-danger">
  
</div>
<div class="page-header">
  <h1 id="ecommercepage" class="logo">E-Commerce </h1>
  <h1 id="socialmediapage" class="logo">Social Media </h1>
</div>

<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Please Sign In</h3>
  </div>
  <div class="panel-body">
  
  <div class="row">
  
<div class="col-md-5 imglogo" >
<a id="ecommerce"  href="#"><img src="images/ecommerce.jpg" /></a>
<a id="socialmedia"  href="#"><img src="images/socialmedia.jpg" /></a>

</div>

    <div class="col-md-7" style="border-left:1px solid #ccc;height:160px">
   
<form class="form-horizontal" action="/login" method="post">
<fieldset>

  <input name="username" id="username" type="text" placeholder="Enter User Name" class="form-control input-md">
   <div class="spacing"></div>
  <input name="password" id="password" type="password" placeholder="Enter Password" class="form-control input-md">
  <div class="spacing"><input type="checkbox" name="checkboxes" id="checkboxes-0" value="1"><small> Remember me</small></div>
  <div class="spacing"><a href="#"><small> Forgot Password?</small></a><br/></div>
  <button id="singlebutton" name="singlebutton" type="submit" class="btn btn-info btn-sm pull-right">Sign In</button>


</fieldset>
</form>
</div>
    
</div>
    
</div>
<div id="socialmediafooter" class="panel-footer">
    Not Registered? <a href="/signup">Register here</a> 
 </div>
 <div id="ecommercefooter" class="panel-footer">
    Login With <a href="#" >Social Media</a>
 </div>
</div>

</div>
</body>
<script type="text/javascript">
$(document).ready(function(){ 

	var url = document.URL.split(":");
	
	if(url[1] == "//www.ecommerece.com")
	{
		$("#ecommerce").show();
		$("#ecommercepage").show();
		$("#ecommercefooter").show();
		
		$("#socialmedia").hide();
		$("#socialmediapage").hide();
		$("#socialmediafooter").hide();
	}
	if(url[1] == "//www.socioalmedia.com")
	{
		$("#socialmedia").show();
		$("#socialmediapage").show();
		$("#socialmediafooter").show();
		
		$("#ecommerce").hide();
		$("#ecommercepage").hide();
		$("#ecommercefooter").hide();
		
		
	}

	var message="${errormessage}";
	if(message != '')
	{
		$("#errordiv").show();
		$("#errordiv").text(message);
		
	}
	else
	{
		$("#errordiv").hide();
	}
	
       
});

</script>
</html>