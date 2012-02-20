<%-- 
    Document   : success
    Created on : Feb 17, 2012, 8:15:06 PM
    Author     : Donnchadh

notes: Must create function to highlight the current day (.today)
       Must create function to make the current week bigger (.big)
--%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<%@page session="true" import="java.util.*" %>
<jsp:useBean id="tm" scope="page" class="managers.TimetableManager" />

<%
    /*
     * String userName = null; //TODO: possibly more secure using try catch? try
     * {
     *
     *
     * } catch (Exception e) { } if (userName == null) {
     *
     * }
     */
    String userName = (String) session.getAttribute("sessUserName");
    if (userName == null) {
        response.sendRedirect(".");
    }
%>

<%
    int currYear = 0;
    int currMonth = 0;
    int currDay = 0;
    
    Calendar c = Calendar.getInstance();
    Calendar cal = Calendar.getInstance();
    currMonth = c.get(c.MONTH);
    currYear = c.get(c.YEAR);
    currDay = c.get(c.DAY_OF_MONTH);
%>

<% //to be made into a library
    
    String[] monthName = {"January", "February",
        "March", "April", "May", "June", "July",
        "August", "September", "October", "November",
        "December"
    };
    String month = monthName[currMonth];  
%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Team 20</title>
        <meta name="description" content="Team 20's Project">
        <meta name="author" content="Team 20">
        <link rel="stylesheet" href="css/style.css?v=1.0">
        <link rel="stylesheet" href="css/style2.css?v=1.0">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript">
            function initMenu() {
                var block = $(".day");
				
                $('.open').hide(); 
                block.click(
                function() {
                    $(this).parents('div:eq(0)').find('.open').slideToggle('fast');	
                }
            );}
            $(document).ready(function() {initMenu();});
        </script>
        <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <div id="welcome"
             <p>You have successfully logged into Team 20's Timetable System</p>
            <%
                out.print("UserName : " + session.getAttribute("sessUserName"));
            %>
            <p><a href="logout.jsp">Logout</a></p>
        </div>
            
            <%=tm.outputTimetable(userName,cal)%>

        
</body>
<footer>A Team 20 Project.</footer>
</html>