<%-- 
    Document   : prevmonth
    Created on : 10-Mar-2012, 21:08:14
    Author     : Donnchadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String action = "plus";
    response.sendRedirect("timetable.jsp?nextmonth=" + action);
%>