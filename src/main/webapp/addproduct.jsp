<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">E-Commerce</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
               
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${sessionScope.userName } <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                       
                        <li>
                            <a href="/logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                  
                    <li>
                        <a href="/products"><i class="fa fa-fw fa-table"></i>List</a>
                    </li>
                    <li class="active">
                        <a href="/addproduct"><i class="fa fa-fw fa-edit"></i>Add Product</a>
                    </li>
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Product
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Ecommerce</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Product
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
				<div class="container">
					<div class="col-md-5">
						<div class="form-area">  
							<form action="/addproduct"  method="post" role="form">
							<br style="clear:both">
										<h3 style="margin-bottom: 25px; text-align: center;">Product Details</h3>
										<div class="form-group">
											<input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
										</div>
										
										<div class="form-group">
											<input type="text" class="form-control" id="mobile" name="mobile" placeholder="Category" required>
										</div>
										<div class="form-group">
											<input type="text" class="form-control" id="mobile" name="fromAge" placeholder="From Age" >
										</div>
										<div class="form-group">
											<input type="text" class="form-control" id="mobile" name="toAge" placeholder="To Age" >
										</div>
										<div class="form-group">
											<input type="text" class="form-control" id="price" name="price" placeholder="Price" required>
										</div>
										<div class="form-group">
										<textarea class="form-control" type="textarea" name="description" placeholder="Description" maxlength="140" rows="7"></textarea>
											<span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
										</div>
								
							<button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Add</button>
							</form>
						</div>
					</div>
				</div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>