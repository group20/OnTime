<%-- 
    Document   : timetable
    Created on : 18-Feb-2012, 16:32:51
    Author     : Paul
--%>

<%@page import="managers.TimetableManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="tm" scope="page" class="managers.TimetableManager" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 20</title>
    </head>
    <body>
        <%
        String userName = (String) session.getAttribute("sessUserName");
        if(userName == null)
        {
                response.sendRedirect(".");
        }
        
        tm.outputTimetable(userName);
            
        %>
    </body>
</html>
