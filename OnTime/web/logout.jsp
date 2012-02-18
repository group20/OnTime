<%-- 
    Document   : logout
    Created on : Feb 16, 2012, 9:26:37 PM
    Author     : Donnchadh
--%>

<%@page import="java.util.*" %>

<%
    String message = "User logged out successfully ";
    session.invalidate();
    response.sendRedirect(".?details=" + message);
%>