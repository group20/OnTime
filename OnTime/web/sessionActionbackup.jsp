<%-- 
    Document   : sessionAction
    Created on : Feb 16, 2012, 9:23:45 PM
    Author     : Donnchadh
--%>

<%@page import="java.util.*" %>
<jsp:useBean id="validator" scope="session" class="javafiles.validator" />

<%String userid = request.getParameter("username");
  String password = request.getParameter("password");
  %>

<% if (validator.valid(userid, password)) {%>

<%session.setAttribute("sessUserName", request.getParameter("username"));%>

Welcome to Team 20's timetable system <%= session.getAttribute("sessUserName")%>
<a href="logout.jsp"><b>Logout</b></a>
<%} else {%>
<%
    response.sendRedirect("index.jsp");
%>
<%}
%>
