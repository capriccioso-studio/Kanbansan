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
    <link rel="shortcut icon" href="/SoaBaseCode/img/favicon.ico">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style type="text/css">
    .scrollbar {
        overflow-y: overlay;
    }

    .scrollbar::-webkit-scrollbar-track {
        background-color: #F5F5F5;
        border-radius: 10px;
    }

    .scrollbar::-webkit-scrollbar {
        width: 8px;
        background-color: #F5F5F5;
    }

    .scrollbar::-webkit-scrollbar-thumb {
        background-color: gray;
        border-radius: 10px;
    }

    .dropdown-menu li a:hover, .dropdown-menu li a:focus, .dropdown-menu li a:active {
        background-color: #1093a7;
        color: #FFFFFF;
    }
</style>
</head>
<body>
    <div class="wrapper">
        <div class="sidebar" data-color= "blue" style="background-color: #24454c !important; color: #FFFFFF;">
            <div class="logo" >
                <img src="/SoaBaseCode/img/kanbansan-logo-white.png" style="width: 240px;" href="/SoaBaseCode/">   
            </div>
            <div style="padding-left: 28px; padding-top: 20px; font-weight: bold; font-size: 18px;">
                My Projects
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="active">
                        <a href="dashboard.html">
                            <p style="color: #FFFFFF !important;"> Project One</p>
                        </a>
                    </li>
                    <li>
                        <a href="./user.html">
                            <p style="color: #FFFFFF !important;"> Project Two</p>
                        </a>
                    </li>
                    <li style="padding-left: 30px;">
                        <img src="/SoaBaseCode/img/add-member.png" style="height: 25px;">
                        <button type="button" data-toggle="modal" data-target="#newProject" style="width: 100px;
                        background-color: transparent; border-style: none; padding-left: -30px;">
                        <p> Add Project </p> 
                    </button>
                </li>
            </ul>
            <div style="width: 220px; margin-left: 28px;">  <hr style="border-color: #589ba4;"> </div>

            <div style="padding-left: 28px; padding-top: 10px; font-size: 18px; color: #90b2b9;">
                Members (5)
            </div>
            <ul class="nav" style="list-style: none; margin-left: 30px;">
                <li style="margin-bottom: 20px;"> 
                    <img src="/SoaBaseCode/img/yes-icon.png" style="height: 30px; color: #FFFFFF !important; padding-right: 10px;"> Yukatrina
                </li>
                <li style="margin-bottom: 20px;"> 
                    <img src="/SoaBaseCode/img/cielo-icon.png" style="height: 30px; color: #FFFFFF !important; padding-right: 10px;"> Shell Low
                </li>
                <li style="margin-bottom: 20px;"> 
                    <img src="/SoaBaseCode/img/user-icon.png" style="height: 30px; color: #FFFFFF !important; padding-right: 10px;"> Jake Zyrus
                </li>
                <li style="margin-bottom: 20px;"> 
                    <img src="/SoaBaseCode/img/kim-icon.png" style="height: 30px; color: #FFFFFF !important; padding-right: 10px;"> Chem Kim
                </li>
                <li style="margin-bottom: 20px;"> 
                    <img src="/SoaBaseCode/img/dane-icon.png" style="height: 30px; color: #FFFFFF !important; padding-right: 10px;"> Dane Yel
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel" style="background-color: #def2f3; color:#3b7880">

        <button type = "button" class="fab" data-toggle="modal" data-target="#emptyTask" style="background-color: #1ad3f1;">
        +</button>

        <nav class="navbar navbar-transparent navbar-absolute" style="background-color: #1093a7; margin-left: 10px; color: #FFFFFF";>
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" style="font-size: 30px; font-weight: bold; padding-left: 30px; padding-top: 15px;"> Project One </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">notifications</i>
                                <span class="notification">5</span>
                                <p class="hidden-lg hidden-md">Notifications</p>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#"> Jake Zyrus has been added to the team</a>
                                </li>
                                <li>
                                    <a href="#"> Yukatrina has been added to the team</a>
                                </li>
                                <li>
                                    <a href="#"> Shell Low has been added to the team</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">person</i>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/">Log Out</a>
                                    </li>
                                </ul>
                            </a>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group  is-empty">
                            <input type="text" class="form-control" placeholdelr="Search" style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important; input::-webkit-input-placeholder{color: #FFFFFF;}">
                            <span class="material-input"></span>
                        </div>
                        <button type="submit" class="btn btn-white btn-round btn-just-icon">
                            <i class="material-icons" style="font-size: 10px;"> GO </i>
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
                        <h4 class = "text-center" style="font-weight: bold; padding-left: -10px;">To-do's</h4>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <h4 class = "text-center" style="font-weight: bold;">In Progress</h4>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <h4 class = "text-center" style="font-weight: bold;">To Validate</h4>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <h4 class = "text-center" style="font-weight: bold;">Done</h4>
                    </div>
                </div>
                <!-- Priority 1 -->
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">

                        <button type ="button" class="btn btn-white card" data-toggle = "modal" data-target = "#exampleModal" style = "height: 130px;">
                            <div class="card-content" style = "text-align: left; margin-left: -28px; text-transform: none;">
                                <p class="category" style="font-size: 13px !important; margin-top: -10px; font-family: Helvetica, sans-serif !important;">Priority 1</p>
                                <h5 class="title" style = "color: #000000; font-size: 17.5px !important; margin-bottom: 15px;">
                                   Check this Module
                               </h5>
                           </div>
                           <div class="card-footer" style = "text-align: left; margin-left: -10px; text-transform: none;  margin-top: -10px;">
                            <div class="stats">
                                <i class="material-icons" style="margin-top: -12px;">person</i>
                                <a href="#pablo" style="color: #1093a7; margin-top: 10px;">Assigned to: Yukatrina</a>
                            </div>
                        </div>
                    </button>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 1</p>
                            <h5 class="title">
                                Redesign UI
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Jake Zyrus</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 1</p>
                            <h5 class="title">
                                Setup Management
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Chem Kim </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 1</p>
                            <h5 class="title">
                                Project Setup
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Trina </a>
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
                                Create Modals
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Xander Ford</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 2</p>
                            <h5 class="title">
                                Setup Database
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Dane Yel </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 2</p>
                            <h5 class="title">
                                Validate Data Entries
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Shell Lo</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 2</p>
                            <h5 class="title">
                                Registration
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Kim Sanwa </a>
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
                                Recommendations
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Trina</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 3</p>
                            <h5 class="title">
                                Remove Buttons
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Jake Zyrus</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 3</p>
                            <h5 class="title">
                                Touch Spaghet
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Papa Bear</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-content">
                            <p class="category">Priority 3</p>
                            <h5 class="title">
                                Done Task
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">person</i>
                                <a href="#pablo" style="color: #1093a7 !important;">Assigned to: Done Yel </a>
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

            </div>
            <div class="modal-body" style="display: grid;
            grid-template-columns: 5fr 2fr;">
            <div class="scrollbar" style="
            height: 410px;
            overflow-y: scroll;
            overflow-x:  hidden;
            ">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </button>
          <div class="dropdown">
            <a href="#" class="btn dropdown-toggle" data-toggle="dropdown" style="background-color: #1093a7;">
                To Do
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li><a href="#">To Do</a></li>
                <li><a href="#">In Progress</a></li>
                <li><a href="#">To Validate</a></li>
                <li><a href="#">Done</a></li>
            </ul>
        </div>
        <div class="checkbox">
            <label style="font-size: 1.5em">
                <input type="checkbox" name="headerTask">
                Renew Database Connection

            </label>

        </div>
        <div class = "col-md-offset-1" style="color: #000000">
            This video shows database connectivity with SQLyog using JDBC.
        </div>
        <hr>
        <div class="checkbox col-md-offset-1">
            <label>
                <input type="checkbox" name="subTask">
                Close all connecting devices
            </label>
        </div>
        <div class="checkbox col-md-offset-1">
            <label>
                <input type="checkbox" name="subTask">
                Open new connection
            </label>
        </div>
        <div class="checkbox col-md-offset-1">
            <label>
                <input type="checkbox" name="subTask">
                <input id="task_id" type ="text" class ="form-control" name = "taskName" placeholder = "Enter subtask" required autofocus style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important;">
            </label>
        </div>
        <div class="col-md-offset-1">
            <button type="button" class="btn btn-primary" style="background-color: #589ba4;">+ Add Subtask</button>
        </div>

        <hr>



        <div style="color: #000000;">
            <img src="/SoaBaseCode/img/horse-icon.png" style="height: 30px;"> Trina Mae Louise
            <img src="/SoaBaseCode/img/calendar.png" style="height: 30px;" class="col-md-offset-1"> Mar 1
            <select class="col-md-offset-1" style="height: 33px !important; margin-top: -13px;">
                <option value="">Priority</option>
                <option value="low"> Low </option>
                <option value="medium"> Medium </option>
                <option value="high"> High </option>
            </select>
        </div>

        <div>
            <h6 style="color: #303030; padding-top: 30px;">
                <b>Comments</b>
            </h6>
        </div>

        <div style="color: #000000;">
            <img src="/SoaBaseCode/img/horse-icon.png" style="height: 30px;"> <b>Dane</b>
            <span style="font-size: 10px; color: #589ba4 !important;"> Feb 28 9:30 PM</span>
            <div class="col-md-offset-1" style="font-size: 13px;">Yes, close the old database connection.</div>
        </div>

        <div>
            <textarea class="form-control" placeholder="Write a comment..." rows="5" style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important;"></textarea>
            <button type="button" class="btn btn-primary" style="background-color: #589ba4">Comment</button>
        </div>

    </div>

    <div>
        <h6 style="color: #000000">
            <b>Logs</b>
        </h6>
        <div style="color: #000000">
            <div style="font-size: 13px">Yukari added a task.</div>
            <div style="color: #589ba4; font-size: 10px;">Feb 27 8:09 PM</div>
        </div>
        <hr>
        <div style="color: #000000">
            <div style="font-size: 13px;">Yukari set task priority to 2.</div>
            <div style="color: #589ba4; font-size: 10px;">Feb 27 8:09 PM</div>
        </div>
        <hr>
        <div style="color: #000000">
            <div style="font-size: 13px;">Yukari set deadline to Mar 1.</div>
            <div style="color: #589ba4; font-size: 10px;">Feb 27 8:09 PM</div>
        </div>

    </div>
</div>


<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <button type="button" class="btn btn-primary" style="background-color: #589ba4">Save changes</button>
</div>
</div>
</div>
</div>
<!-- Modal -->

<!-- Add Project Modal -->
<div class="modal fade" id="newProject" tabindex="-1" role="dialog" aria-labelledby="newProject" aria-hidden="true" style="height: 750px;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class = "modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/project/add" method="POST">   
                <input type="hidden" name="userid" value=${user.user_id} >        
                    <div class="header header-primary text-center">
                        <h3 style="color: #303030 !important; margin-top: -20px;"> Add New Project </h3>
                    </div>
                    <p class="text-divider"></p>
                    <div class="content">
                        <div class = "row">
                            <div class = "col-md-6">
                                <div class="col-md-10 col-md-offset-1"">
                                    <div class="form-group">
                                        <label style="color: #589ba4;">PROJECT NAME</label>
                                        <input type="text" name="projName" value="" placeholder="Enter project name" class="form-control" style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important; width: 450px; margin-left: 15px;"/>
                                    </div>
                                </div>                                    
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-6">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group">
                                        <label style="color: #589ba4;">PROJECT DESCRIPTION</label>
                                        <input type="text" name="projDesc" value="" placeholder="Enter project description" class="form-control" style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important; width: 450px; margin-left: 15px;"/>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-6">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group">
                                        <label style="color: #589ba4;">PROJECT MEMBERS</label>
                                        <input type="text" value="" placeholder="Type e-mail address" class="form-control" style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important; width: 450px; margin-left: 15px;"/>
                                    </div>
                                </div>               
                            </div>
                        </div>
                        <div class="row" style="text-align: right; padding-right:60px; ">
                            <div>
                                <div style="padding-top: 40px !important;">
                                    <input type="submit" class = "btn btn-primary" value="Create" style="background-color: #589ba4 !important;"> 
                                </div> 
                                <div>
                                    <a href="" style="color: #589ba4;">or join a project</a>
                                </div>                         
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Add Project Modal end-->
<!-- Add Task Modal -->
<div class="modal fade" id="emptyTask" tabindex="-1" role="dialog" aria-labelledby="emptyTask" aria-hidden="true" style="height: 750px;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class = "modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/saveUser" method="POST">           
                    <div class="header header-primary text-center">
                        <h3 style="color: #303030 !important; margin-top: -20px;"> Create New Task </h3>
                    </div>
                    <p class="text-divider"></p>
                    <div class="content">
                        <div class = "row">
                            <div class = "col-md-6">
                                <div class="col-md-10 col-md-offset-1"">
                                    <input id="user_id" type ="text" class ="form-control" name = "user_id" placeholder = "Task Name" style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important; width: 450px; margin-left: 15px;">
                                </div>                                    
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-6">
                                <div class="col-md-10 col-md-offset-1">
                                    <input id="firstName" type ="text" class ="form-control" name = "firstName" placeholder = "Task Description"  style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important; width: 450px; margin-left: 15px;">
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-6">
                                <div class="col-md-10 col-md-offset-1">
                                    <input id="firstName" type ="text" class ="form-control" name = "firstName" placeholder = "Assignee"  style="background-image: linear-gradient(#1093a7, #1093a7), linear-gradient(#D2D2D2, #D2D2D2) !important; width: 450px; margin-left: 15px; ">
                                </div>               
                            </div>
                        </div>
                        <div class="row"> 
                            <div class = "col-md-6" style="padding-top: 10px; padding-left: 30px; color: #303030;"> 
                                <p style="margin-left: 35px;"> Due Date </p>
                                <div class="col-md-10 col-md-offset-1">
                                    <input id="duedate" type="date" name="Due Date" style="margin-top: -10px; border-style: solid; border-color: #858585; border-width: 1px; text-indent: 3px; border-radius: 5px;">
                                </div>               
                            </div>
                            <div class = "cold col-md-6" style="padding-top: 10px; padding-left: 10px; color: #303030;">
                                <p style="margin-left: -20px;"> Priority </p>
                                <select style="margin-left: -20px; height: 33px !important; margin-top: -13px; border-style: solid; border-color: #858585; border-width: 1px; text-indent: 3px; border-radius: 5px;"">
                                    <option value="low" style="text-indent: 3px;"> Low </option>
                                    <option value="medium"> Medium </option>
                                    <option value="high"> High </option>
                                </select>        
                            </div>
                        </div>
                        <div class="row" style="text-align: right; padding-right:60px; ">
                            <div>
                                <div style="padding-top: 40px !important;">
                                    <input type="submit" class = "btn btn-primary" value="Create Task" style="background-color: #589ba4 !important;"> 
                                </div>                          
                            </div>
                        </div>
                    </div>
                </form>
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