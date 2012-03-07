<%-- 
    Document   : firstlogin
    Created on : 07-Mar-2012, 15:45:07
    Author     : paul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css?v=1.0">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to OnTime!</h1>
        <p>As this is your first time logging in, we will need you to fill out a few details!</p>
         <form id="login" method="post" action="addNewUser.jsp"> 
            <h2>Create your account</h2>
            <input type="text" name="firstname" tabindex="1" placeholder="First name" required>
            <input type="text" name="surname" tabindex="2" placeholder="Surname" required>
            <input type="text" name="email" tabindex="3" placeholder="Email" required>
            <input type="submit" value="Create Account" name="submit" class="submit" />
        </form>
    </body>
</html>
