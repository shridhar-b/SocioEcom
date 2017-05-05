<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/registration.css" rel="stylesheet">
</head>
<body background="images/reg.jpg">
<div class="container">
<div class="col-md-5 col-centered">
    <div class="form-area">  
        <form action="/signup" method="post" role="form" enctype="multipart/form-data">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center;">Registration Form</h3>
    				<div class="form-group">
						<input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="middleName" name="middleName" placeholder="Middle Name">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="username" name="username" placeholder="Login User Name" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="password" name="password" placeholder="Password" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="age" name="age" placeholder="Age" >
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="email" name="email" placeholder="Email">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="phone" name="phone" placeholder="Mobile Number">
					</div>
					<div class="form-group">
						<label class="control-label">Profile Pic</label>
						<input id="input-1" type="file" name="file" id="file" class="file form-control">
					</div>
                    
            
        <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Submit</button>
        </form>
    </div>
</div>
</div>
</body>
</html>