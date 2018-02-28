<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/styles.css" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<link rel="stylesheet" href="lib/css/bootstrap.min.css" />
	<link rel="stylesheet" href="lib/css/material-dashboard.css"/>
	<link rel="stylesheet" href="css/media-queries.css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
 <div class="wrapper">
 <div class="header header-filter" >
	<div class="container">
		<div class ="row">
			<form class="form">
				<div class="col-md-6 col-md-offset-3 col-sm-4 col-sm-offset-2">
					<div class ="card card-signup">
						<div class="header header-primary text-center">
	                        <h4>Sign Up</h4>
	                    </div>
	                    <p class="text-divider"></p>
	                    <div class="content">
	                    	<div class = "col-md-6">
	                    		<div class="input-group">
	                    			<input id="user_id" type ="text" class ="form-control" name = "user_id" placeholder = "Username" required autofocus>
								</div>
							</div>
							<div class = "col-md-6">
								<input id="firstName" type ="text" class ="form-control" name = "firstName" placeholder = "First Name" required autofocus>
							</div>
							<div class = "col-md-6">
								<input id="lastName" type ="text" class ="form-control" name = "lastName" placeholder = "Last Name" required autofocus>
							</div>
							<div class = "col-md-6">
								<input id="email" type ="text" class ="form-control" name = "email" placeholder = "Email" required autofocus>
							</div>
							<div class = "col-md-6">
								<input id="password" type ="text" class ="form-control" name = "password" placeholder = "Password" required autofocus>
							</div>							
							<button id = "save-btn" class = "btn btn-primary">Register</button>
							
	                    </div>
					</div>
				</div>
			</form>
		</div>
	</div>
 </div>
 </div>
</body>
	<script src="lib/js/jquery-1.10.1.min.js"></script>
	<script src="lib/js/bootstrap.min.js"></script>
	<script src="lib/js/material.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
	
	<script src="lib/js/arrive.min.js"></script>
	 
	<script src="lib/js/perfect-scrollbar.jquery.min.js"></script>
	<script src="lib/js/material-dashboard.js?v=1.2.0"></script>
	<script src="js/common.js"></script>
	<script src="lib/js/jquery.blockUI.js"></script>
	 <script>
	$(document).ready(function() {
		bindUserFormEvents();
	});
</script>
</html>