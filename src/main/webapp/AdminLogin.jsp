<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin</title>
<link rel="stylesheet" type=text/css href="assets/css/style.css">
<style>
  .color{
  color:red;'
  }
</style>
</head>
<body align="center">
<%
String email = (String)request.getAttribute("email1");
String password =(String) request.getAttribute("password1");
String error = (String) request.getAttribute("error");
%>
<span class="color"><%=error==null?"":error %></span>
<br>
<div class="wrapper">
  <div class="inner-warpper text-center">
    <h2 class="title">Admin Login</h2>
    <form action="AdminAuthenticationController" method="post" id="formvalidate">
      <div class="input-group">
        <label class="palceholder" for="userName">Email</label>
        <input class="form-control"name="email" value="${emailvalue}" type="text" placeholder="" />
        <span class="color"><%= email==null?"":email%></span><br><br>
        <span class="lighting"></span>
      </div>
      <div class="input-group">
        <label class="palceholder" for="password">Password</label>
        <input class="form-control"name="password" value="${passwordvalue}" type="password" placeholder="" />
                  <span class="color"><%=password==null?"":password %></span><br><br>
        
        <span class="lighting"></span>
      </div>

      <button type="submit" id="login">Login</button>
      <div class="clearfix supporter">
        <div class="pull-left remember-me">
          <input id="rememberMe" type="checkbox">
          <label for="rememberMe">Remember Me</label>
        </div>
        <a class="forgot pull-right" href="#">Forgot Password?</a>
      </div>
    </form>
  </div>
</div>
<!-- partial -->
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/jquery.validate.min.js'></script>
<script  src="assets/js/script.js"></script>
     </form>
</body>
</html>