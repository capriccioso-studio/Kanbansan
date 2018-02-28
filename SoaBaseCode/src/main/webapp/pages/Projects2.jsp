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
                </ul>
            </div>
        </div>
        <div class="main-panel" style="background-color: #1093a7; color:#FFFFFF">
            <nav class="navbar navbar-transparent navbar-absolute" style="background-color: #FFFFFF; margin-left: 10px;">
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
                                <div class="card-content" style = "text-align: left; margin-left: -28px; text-transform: none;">
                                    <p class="category"">Priority 1</p>
                                    <h5 class="title">
                                        Renew Database Connection
                                    </h5>
                                </div>
                                <div class="card-footer" style = "text-align: left; margin-left: -10px; text-transform: none;">
                                    <div class="stats">
                                        <i class="material-icons" style="margin-top: -12px;">person</i>
                                        <a href="#pablo">Assigned to: Yukatrina</a>
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
                    <a href="#" class="btn dropdown-toggle" data-toggle="dropdown" style="background-color: #1093a7">
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
                <div class="col-md-offset-1">
                    <button type="button" class="btn btn-primary" style="background-color: #589ba4">+ Add Subtask</button>
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
                    <img src="/SoaBaseCode/img/horse-icon.png" style="height: 30px;"> Dane
                    <span style="font-size: 10px; color: #303030 !important;">    Feb 28 9:30 PM</span>
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
                    <div style="font-size: 13px;">Yukari added a task.</div>
                    <div style="font-size: 10px;">Feb 27 8:09 PM</div>
                </div>
                <hr>
                <div style="color: #000000">
                    <div style="font-size: 13px;">Yukari set task priority to 2.</div>
                    <div style="font-size: 10px;">Feb 27 8:09 PM</div>
                </div>
                <hr>
                <div style="color: #000000">
                    <div style="font-size: 13px;">Yukari set deadline to Mar 1.</div>
                    <div style="font-size: 10px;">Feb 27 8:09 PM</div>
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