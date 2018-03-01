<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 <title>Kanbansan - Home</title>
	<link rel="stylesheet" href="css/styles.css" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<link rel="stylesheet" href="lib/css/bootstrap.min.css" />
	<link rel="stylesheet" href="lib/css/material-dashboard.css"/>
	<link rel="stylesheet" href="css/media-queries.css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>

<body style="background-image: url(/SoaBaseCode/img/splash-image.png);">
	<div id="main-container" class="container">
		<div class="row" style="padding-top: 10px; text-align: right;">
			<a href ="/SoaBaseCode/Register" class = "btn btn-primary" style="background-color: #589ba4 !important;">Register</a>
		</div>
		<div class="row">
			<img src="/SoaBaseCode/img/kanbansan-logo-black.png" style="width: 400px;">
		</div>
	  <form action = "${pageContext.request.contextPath}/login" method = "POST">
	  
	  
		<div class = "row" style="padding-top: 20px;">
	        <div class = "col-md-6">
	            <div class="col-md-5 col-sm-4">
	                <input id="user_id" type ="text" class ="form-control" name = "userName" placeholder = "Username" required autofocus style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important;">
	            </div>
	                    			
			</div>
	    </div>
	    <div class = "row">
	        <div class = "col-md-6">
	            <div class="col-md-5 col-sm-4">
	                <input id="password" type ="password" class ="form-control" name = "password" placeholder = "Password" required autofocus style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important;">
	            </div>
	                    			
			</div>
	    </div>
	    <div class = "row">
	    	<div class = "col-md-6">
	    		<div class="col-md-5" style="padding-top: 20px;">
	    			<input type = "submit" class = "btn btn-primary" value = "Log In" style="background-color: #589ba4 !important;">
	    	</div>
	    	</div>

	    </div>
	   </form>
	    <div class="row">
	    	<div class="col-md-6">
	    		<div class="col-md-5" style="padding-top: 20px;">
	    			<a href ="/SoaBaseCode/Register" style="color: #589ba4;">Don't have an account? Sign up.</a>
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
</html>