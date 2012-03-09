<%-- 
    Document   : addNewUser
    Created on : 07-Mar-2012, 15:59:21
    Author     : paul
--%>

<%@page import="java.sql.SQLException" %>
<%@page import="java.util.*" %>
<%@page import="managers.DBManager" %>

<%
    String fname = request.getParameter("firstname");
    String sname = request.getParameter("surname");
    String email = request.getParameter("email");
    DBManager db = new DBManager();
    try {
        db.addUser(session.getAttribute("sessUserName").toString(), fname, sname, 0, email);
    } catch(Exception e)
    {
        e.printStackTrace();
    }
    pageContext.forward("success.jsp");
    
    
%>