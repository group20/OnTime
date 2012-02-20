<%-- 
    Document   : timetable
    Created on : 18-Feb-2012, 16:32:51
    Author     : Paul
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="tm" scope="page" class="managers.TimetableManager" />
<jsp:useBean id="dm" scope="page" class="managers.DBManager" />
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
        Calendar cal = Calendar.getInstance();
        cal.set(2012, 2, 14);
        %>
        <%=tm.outputTimetable(userName,cal)%>
            
    </body>
</html>
