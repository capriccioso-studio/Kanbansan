<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Kanbansan - Board</title>
	<link rel="stylesheet" href="../css/styles.css" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<link rel="stylesheet" href="../lib/css/bootstrap.min.css" />
	<link rel="stylesheet" href="../lib/css/material-dashboard.css"/>
	<link rel="stylesheet" href="../css/media-queries.css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<div class="wrapper">
        <div class="sidebar" data-color="purple" >
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="logo" >
                <a href="/SoaBaseCode/" class="simple-text">
                   Kanbansan
                </a>
            </div>
            <div style="padding-left: 20px; padding-top: 20px; font-weight: bold;">
                My Projects
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="active">
                        <a href="dashboard.html">
                            <i class="material-icons">dashboard</i>
                            <p>Sample Project 1</p>
                        </a>
                    </li>
                    <li>
                        <a href="./user.html">
                            <i class="material-icons">person</i>
                            <p>Sample Project 2</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <nav class="navbar navbar-transparent navbar-absolute">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"> Sample Project 1 </a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="material-icons">dashboard</i>
                                    <p class="hidden-lg hidden-md">Dashboard</p>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="material-icons">notifications</i>
                                    <span class="notification">5</span>
                                    <p class="hidden-lg hidden-md">Notifications</p>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#"> has been added to the team</a>
                                    </li>
                                    <li>
                                        <a href="#"> has been added to the team</a>
                                    </li>
                                    <li>
                                        <a href="#"> has been added to the team</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="material-icons">person</i>
                                    <p class="hidden-lg hidden-md">Profile</p>
                                </a>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group  is-empty">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="material-input"></span>
                            </div>
                            <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                <i class="material-icons">search</i>
                                <div class="ripple-container"></div>
                            </button>
                        </form>
                    </div>
                </div>
            </nav>
            <div class="content">
                <div class="container-fluid">

                    <div class = "row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <h4 class = "text-center">Selected for Development</h4>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <h4 class = "text-center">In Progress</h4>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <h4 class = "text-center">Validation</h4>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <h4 class = "text-center">Done</h4>
                        </div>
                    </div>
<!-- Priority 1 -->
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">

                            <button type ="button" class="btn btn-white card" data-toggle = "modal" data-target = "#exampleModal">
                                <div class="card-content">
                                    <p class="category">Priority 1</p>
                                    <h5 class="title">
                                        Screw module 2x
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: Trina</a>
                                    </div>
                                </div>
                            </button>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 1</p>
                                    <h5 class="title">
                                        Imo mama i develop
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 1</p>
                                    <h5 class="title">
                                        Validatingg
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 1</p>
                                    <h5 class="title">
                                        Done na siguro ni
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<!-- Priority 2 -->
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 2</p>
                                    <h5 class="title">
                                        Screw module 2
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: Trina</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 2</p>
                                    <h5 class="title">
                                        Imo mama i develop
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 2</p>
                                    <h5 class="title">
                                        Validatingg
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 2</p>
                                    <h5 class="title">
                                        Done na siguro ni
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<!-- Priority 3 -->
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 3</p>
                                    <h5 class="title">
                                        Screw module 2
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: Trina</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 3</p>
                                    <h5 class="title">
                                        Imo mama i develop
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 3</p>
                                    <h5 class="title">
                                        Validatingg
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card">
                                <div class="card-content">
                                    <p class="category">Priority 3</p>
                                    <h5 class="title">
                                        Done na siguro ni
                                    </h5>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="material-icons">person</i>
                                        <a href="#pablo">Assigned to: </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


<!--Modal Core  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
</body>
	<script src="../lib/js/jquery-1.10.1.min.js"></script>
	<script src="../lib/js/bootstrap.min.js"></script>
	<script src="../lib/js/material.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
	
	<script src="../lib/js/arrive.min.js"></script>
	 
	<script src="../lib/js/perfect-scrollbar.jquery.min.js"></script>
	<script src="../lib/js/material-dashboard.js?v=1.2.0"></script>
	<script src="../js/common.js"></script>
	<script src="../lib/js/jquery.blockUI.js"></script>
	 <script>
	$(document).ready(function() {
		bindUserFormEvents();
	});
	</script>
</html>