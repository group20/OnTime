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
                <script language="JavaScript" src="CalendarPopup.js"></script>
        <script language="JavaScript" src="common.js"></script>
        <SCRIPT LANGUAGE="JavaScript">document.write(getCalendarStyles());</SCRIPT>
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
            <p><a <form name="addevent "id="addevent" method="post" action="addNewEvent.jsp">
            <h2>New Event</h2>
            <input type="text" name="name" tabindex="1" placeholder="Title" required />
            <input type="text" size="25" name="description" tabindex="2" placeholder="Description" />
            <script language="JavaScript" id="jscal1x">
                var cal1x = new CalendarPopup("testdiv1");
            </script>
                      <a href="#" onClick="cal1x.select(document.forms['addevent'].startdate,'anchor1x','dd/MM/yyyy');return false;" 
               TITLE="cal1x.select(document.forms['addevent'].startdate,'anchor1x','dd/MM/yyyy'); return false;" NAME="anchor1x" ID="anchor1x"><input type="text" name="startdate" tabindex="3" placeholder="Start Date" required ></a>

            <script language="JavaScript" id="jscal2x">
                var cal2x = new CalendarPopup("testdiv1");
            </script>
             <a href="#" onClick="cal1x.select(document.forms['addevent'].enddate,'anchor2x','dd/MM/yyyy');return false;" 
               title="cal2x.select(document.forms['addevent'].enddate,'anchor2x','dd/MM/yyyy'); return false;" NAME="anchor2x" ID="anchor2x"><input type="text" name="enddate" tabindex="4" placeholder="End Date" required ></a>
           

            <input type="time" name="starttime" tabindex="5" placeholder="Start Time" required />
            <input type="time" name="endtime" tabindex="6" placeholder="End Time" required />
            <input type="text" name="invitiees" tabindex="7"  />
            <select name="frequency" >
                <option value="0">One-time event</option>
                <option value="1">Daily</option>
                <option value="2">Weekly</option>
                <option value="3">Monthly</option>
            </select>
            <input type="submit" value="Create" name="submit" class="submit" />
        </form>
        <div id="testdiv1" style="position:absolute;
             visibility:hidden;
             background-color:white;
             layer-background-color:white;">
        </div>
        </div>href="logout.jsp">Logout</a></p>
            <form name="addevent "id="addevent" method="post" action="addNewEvent.jsp">
            <h2>New Event</h2>
            <input type="text" name="name" tabindex="1" placeholder="Title" required />
            <input type="text" size="25" name="description" tabindex="2" placeholder="Description" />
            <script language="JavaScript" id="jscal1x">
                var cal1x = new CalendarPopup("testdiv1");
            </script>
                      <a href="#" onClick="cal1x.select(document.forms['addevent'].startdate,'anchor1x','dd/MM/yyyy');return false;" 
               TITLE="cal1x.select(document.forms['addevent'].startdate,'anchor1x','dd/MM/yyyy'); return false;" NAME="anchor1x" ID="anchor1x"><input type="text" name="startdate" tabindex="3" placeholder="Start Date" required ></a>

            <script language="JavaScript" id="jscal2x">
                var cal2x = new CalendarPopup("testdiv1");
            </script>
             <a href="#" onClick="cal1x.select(document.forms['addevent'].enddate,'anchor2x','dd/MM/yyyy');return false;" 
               title="cal2x.select(document.forms['addevent'].enddate,'anchor2x','dd/MM/yyyy'); return false;" NAME="anchor2x" ID="anchor2x"><input type="text" name="enddate" tabindex="4" placeholder="End Date" required ></a>
           

            <input type="time" name="starttime" tabindex="5" placeholder="Start Time" required />
            <input type="time" name="endtime" tabindex="6" placeholder="End Time" required />
            <input type="text" name="invitiees" tabindex="7"  />
            <select name="frequency" >
                <option value="0">One-time event</option>
                <option value="1">Daily</option>
                <option value="2">Weekly</option>
                <option value="3">Monthly</option>
            </select>
            <input type="submit" value="Create" name="submit" class="submit" />
        </form>
        <div id="testdiv1" style="position:absolute;
             visibility:hidden;
             background-color:white;
             layer-background-color:white;">
        </div>
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
