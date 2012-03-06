<%-- 
    Document   : sessionAction
    Created on : Feb 16, 2012, 9:23:45 PM
    Author     : Donnchadh
--%>

<%@page import="java.util.*" %>
<jsp:useBean id="validator" scope="session" class="javafiles.validator" />

<%
    String userid = request.getParameter("username");
    String password = request.getParameter("password");
    String message = "User login successful";

    if (validator.valid(userid, password)) {

        session.setAttribute("sessUserName", request.getParameter("username"));
        pageContext.forward("success.jsp?details=" + message);
    } else {

        String error = "Incorect password or username ";
        pageContext.forward(".?details2=" + error);
        boolean test = false;
    }
%>