<%-- 
    Document   : index
    Created on : Feb 16, 2012, 9:26:37 PM
    Author     : Donnchadh testing
--%>

<%@page import="sun.rmi.log.LogOutputStream"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Team 20</title>
        <meta name="description" content="Team 20's Project">
        <meta name="author" content="Team 20">
        <link rel="stylesheet" href="css/style.css?v=1.0">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    </head>
    <body>
        <form id="login" method="post" action="sessionAction.jsp"> 
            <h2>Sign in to your account</h2>
            <input type="text" name="username" tabindex="1" placeholder="Username" required>
            <input type="password" name="password" tabindex="2" placeholder ="Password" required>
            <input type="submit" value="Sign in" name="submit" class="submit" />
            <h3>
                <%
                            String details = request.getParameter("details");
                            if (details != null) {
                                out.print(details);
                            }
                %>
            </h3>
        </form>
    </body>
    <footer>A Team 20 Project.</footer>
</html>