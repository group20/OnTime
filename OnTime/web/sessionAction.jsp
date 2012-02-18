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

                response.sendRedirect("success.jsp?details=" + message);
            } else {

                response.sendRedirect(".");

            }
%>