<%-- 
    Document   : index
    Created on : Feb 16, 2012, 9:26:37 PM
    Author     : Donnchadh
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Team 20</title>
        <meta name="description" content="Team 20's Project">
        <meta name="author" content="Team 20">
        <link rel="stylesheet" href="css/style.css?v=1.0">
        <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.17/jquery-ui.min.js" type="text/javascript"></script>
        <script src="http://jquery-ui.googlecode.com/svn/tags/latest/ui/minified/i18n/jquery-ui-i18n.min.js" type="text/javascript"></script>
        <script type="text/javascript" >
            function shake(){
                $("form").effect("shake", {times:3}, 100);
            }
        </script>
        <%  String details = request.getParameter("details");
            String error = request.getParameter("details2");
        %>
    </head>
    <% if (error == null) {%>
    <body>
        <%        } else {%>
    <body onload="shake()">
        <%            }%>
        <header>
            <img src="images/logo_onTime.png" alt="onTime" id="logo"/>
        </header>
        <form id="login" method="post" action="sessionAction.jsp"> 
            <h2>Sign in to your account</h2>
            <input type="text" name="username" tabindex="1" placeholder="Username" required>
            <input type="password" name="password" tabindex="2" placeholder ="Password" required>
            <input type="submit" value="Sign in" name="submit" class="submit" />
            <h3>
                <%
                    if (details != null) {
                        out.print(details);
                    }
                    if (error != null) {
                        out.print(error);
                    }
                %>
            </h3>
        </form>
    </body>
    <footer>A Team 20 Project.</footer>
</html>