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
<%@ page import="javafiles.Event" %>

<%
    String userName = (String) session.getAttribute("sessUserName");
//    if (userName == null) {
//        response.sendRedirect(".");
 //   }
%>

<%
    int currYear = 0;
    int currMonth = 0;
    int currDay = 0;

    Calendar cal = Calendar.getInstance();
    cal.set(Calendar.MONTH,cal.MONTH);
    currMonth = cal.get(cal.MONTH);
    currYear = cal.get(cal.YEAR);
    
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
            <a href="addevent.jsp"><h3>Add Event</h3></a>
        </div>
            <div id="calendar">					
            <div id="calcontainer">
                <div id="calheader">
                    <h2><%=month + " " + currYear%></h2>
                </div>		
                <div id="daysweek">
                    <div class="dayweek"><p>Monday</p></div>
                    <div class="dayweek"><p>Tuesday</p></div>
                    <div class="dayweek"><p>Wednesday</p></div>
                    <div class="dayweek"><p>Thursday</p></div>
                    <div class="dayweek"><p>Friday</p></div>
                    <div class="dayweek"><p>Saturday</p></div>
                    <div class="dayweek brn"><p>Sunday</p></div>
                </div>
                <div id="daysmonth">
               <div class="week">
                   
            <%=tm.outputTimetable(userName,cal)%>
            </div>				
            </div>					
            <div id="calcat">
                <div class="caldot blue"></div><p>Lecture</p>
                <div class="caldot yellow"></div><p>Tutorial</p>
                <div class="caldot green"></div><p>Student Meeting</p>
                <div class="caldot red"></div><p>Lecturer Meeting</p>
            </div>				
        </div>	
    </div>
        
</body>
<footer>A Team 20 Project.</footer>
</html>