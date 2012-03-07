<%-- 
    Document   : addNewEvent
    Created on : 07-Mar-2012, 17:49:26
    Author     : paul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javafiles.Event" %>
<%@page import="managers.DBManager" %>
<%
    Event newEvent = new Event(request.getParameter("name"), 
                               request.getParameter("description"), 
                               "" + request.getParameter("startdate"), 
                               "" + request.getParameter("enddate"), 
                               Integer.parseInt(request.getParameter("starttime")), 
                               Integer.parseInt(request.getParameter("endtime")), 
                               session.getAttribute("sessUserName").toString(), 
                               request.getParameter("invitiees"), 
                               request.getParameter("frequency"));
    DBManager db = new DBManager();
    db.addEvent(newEvent);
    pageContext.forward("paulsuccess.jsp");
%>
