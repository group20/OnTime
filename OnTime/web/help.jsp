<%-- 
    Document   : help
    Created on : Mar 3, 2012, 12:30:44 AM
    Author     : Zippy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <head>
        <meta charset="utf-8">
        <title>Help</title>
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
       
    </head>
    </head>
    <body>
        <h1>List of Frequently Asked Questions</h1>
        <ol>
        <li>1.I can't remember my password<br>
Your password is the password you use to log-in to Unix the lab computers.</li>
<br>
<li>2.How do I cahage my password?<br>
To change your password login to unix and type ypassword followed by your new password into the console 
Please contact the system admins on help@cs.ucc.ie</li>

<br>
<li>
3.I can't remember my username
<br>
Your user name is the username you use to login to the lab computers.
It should consist of your initials and a number.
Please contact the system admins on help@cs.ucc.ie if you cannot remember it.</li>
<br>
<li>
4.I am trying to register, but the system says my username is already in use.
<br>
This could be because you are already registered with the system.</li>
<br>
<li>
5.I cannot login even with the correct user name and password.
<br>
This could be one of a several problems issues:
<br>
Double-check that you are entering the correct user name and password.
<br>
Usernames and passwords are case sensitive so make sure your Caps Lock is not on.
<br>
Check that your browser security settings are allowing cookies on your machine. You must accept cookies from us in order to use the site.
<br>
If you are still having problems, please contact system admins on help@cs.ucc.ie
</li>
<br>
<li>
6.How do I change my user name or password?
<br>
You cannot change your user name but you can change your password if you change your linux password.
To change your password login to unix and type ypassword followed by your new password into the console.
</li>
<br>
<li>
7.How do I log out of the service?
<br>
You click the logout button on the top left of the screen.
</li>
        </ol>
    </body>
</html>
