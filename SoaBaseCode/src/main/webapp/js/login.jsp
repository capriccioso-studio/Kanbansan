<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="../assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title> Kanbansan </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="../assets/css/login.css" rel="stylesheet" />
</head>
    <body>
        <div class="wrapper">
            <form class="form-signin">       
                <h2 class="form-signin-heading">Log In</h2>
                    <p class = "input-title"> 
                            EMAIL ADDRESS 
                    </p>
                    <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
                    <p class = "input-title"> 
                            PASSWORD 
                    </p>
                    <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
                        <label class="checkbox">
                               <br> <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
                        </label>                   
                   <br> <button class="button-login" type="submit">Log In</button>   
            </form>
        </div>
    </body>
</html>