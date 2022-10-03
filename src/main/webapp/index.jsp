<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}
 
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
 
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
 
button:hover {
  opacity: 0.8;
}
 
.cancelbutton {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
 
.container {
  padding: 16px;
}
 
span.psw {
  float: right;
  padding-top: 16px;
}

</style>

</head>
<body>

    <form action="LoginServlet" method="post" >
         <div class="container">
    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Please enter your Username" name="username" id = "username" required>
 
    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Please enter Password" name="password" id="password" required>
         
    <button type="submit">Login</button>
  </div>
 
      </form>
</body>
</html>