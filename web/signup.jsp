<%-- 
    Document   : signup
    Created on : Mar 15, 2022, 1:27:42 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="css/login.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Sign up Form</title>
    </head>
    <body>
        <form action="signup" method="post" class="form-signup" style="width: 300px;margin:10vh auto;">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="Username*" required="" autofocus="">
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password*" required autofocus="">
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password*" required autofocus="">
                <input name="name" type="text" id="user-name" class="form-control" placeholder="Your Name*" required="" autofocus="">
                <input name="phone" type="text" id="user-name" class="form-control" placeholder="Phone*" required="" autofocus="">
                <input name="email" type="text" id="user-name" class="form-control" placeholder="Email"  autofocus="">
                <input name="address" type="text" id="user-name" class="form-control" placeholder="Address"  autofocus="">
                <h3 style="color: red">${errorConfirm}</h3>
                <h3 style="color: red">${accountExisted}</h3>
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="login.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
                
    </body>
</html>
