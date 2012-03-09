<%-- 
    Document   : sessionAction
    Created on : Feb 16, 2012, 9:23:45 PM
    Author     : Donnchadh
--%>

<%@page import="java.util.*" %>
<%@page import="managers.DBManager" %>
<jsp:useBean id="validator" scope="session" class="javafiles.validator" />

<%
    String userid = request.getParameter("username");
    String password = request.getParameter("password");
    String message = "User login successful";
    DBManager db = new DBManager();

    if (validator.valid(userid, password)) {

        session.setAttribute("sessUserName", userid);
      if(!db.containsUser(userid))
      {
            pageContext.forward("firstlogin.jsp");
      } else {
        pageContext.forward("timetable.jsp?details=" + message);
       }
    } else {

        String error = "Incorrect password or username ";
        pageContext.forward(".?details2=" + error);
        boolean test = false;
    }
%>