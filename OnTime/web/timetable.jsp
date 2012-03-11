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
    // get the current year/month/day
    Calendar cal = Calendar.getInstance();
    int currentYearInt = cal.get(Calendar.YEAR);
    int currentMonthInt = cal.get(Calendar.MONTH);
    int currentDayInt = cal.get(Calendar.DATE);
    String currentYearString = new Integer(currentYearInt).toString();
    String currentMonthString = new Integer(currentMonthInt).toString();

    // get parameters the user might have sent by clicking fwd or back
    String newMonth = request.getParameter("month");
    String newYear = request.getParameter("year");

    // reset the month and year if necessary
    if (newMonth != null) {
        currentMonthString = newMonth;
    }
    if (newYear != null) {
        currentYearString = newYear;
    }

    // determine the next/previous month and year
    int intMonth = new Integer(currentMonthString).intValue();
    int intYear = new Integer(currentYearString).intValue();

    // determine the name of the current intMonth
    String monthNames[] = {"January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"};

    String monthName = monthNames[intMonth];

    // determine the next/previous month and year.
    // this is really only needed by calendar.jsp, but i moved it here
    // to simplify calendar.jsp.
    int nextYear = intYear;
    int prevYear = intYear;
    int prevMonth = intMonth - 1;
    if (prevMonth == -1) {
        prevMonth = 11;
        prevYear--;
    }
    int nextMonth = intMonth + 1;
    if (nextMonth == 12) {
        nextMonth = 0;
        nextYear++;
    }
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
        <link rel="stylesheet" href="css/style3.css?v=1.0">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript" src="jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="script.js"></script>
        <script language="JavaScript" src="CalendarPopup.js"></script>
        <script language="JavaScript" src="common.js"></script>
        <SCRIPT LANGUAGE="JavaScript">document.write(getCalendarStyles());</SCRIPT>
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
                out.print("currentMonthString : " + currentMonthString);
            %>
            <p><a href="logout.jsp">Logout</a></p>
            <ul class="container">
                <li class="menu">

                    <ul>
                        <li class="button"><a href="#" class="green">Add Event <span></span></a></li>

                        <li class="dropdown">
                            <ul>
                                <li>
                                <li>
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
                                </li>
                        </li>
                    </ul>
                </li>

            </ul>

        </li>

        <li class="menu">

            <ul>
                <li class="button"><a href="#" class="orange">Edit Event <span></span></a></li>          	

                <li class="dropdown">
                    <ul>
                        <li>
                        <li>
                            <form id="firsttime3" method="post">
                                <h2>Edit Event</h2>
                                <input type="text" name="firstname" tabindex="1" placeholder="First name" required>
                                <input type="text" name="surname" tabindex="2" placeholder="Surname" required>
                                <input type="text" name="email" tabindex="3" placeholder="Email" required>
                                <input type="submit" value="Create Account" name="submit" class="submit" />
                            </form></li>
                </li>
            </ul>
        </li>

    </ul>

</li>

<li class="menu">

    <ul>
        <li class="button"><a href="#" class="blue">Remove Event <span></span></a></li>         	

        <li class="dropdown">
            <ul>
                <li>
                <li>
                    <form id="firsttime3" method="post">
                        <h2>Remove Event</h2>
                        <input type="text" name="firstname" tabindex="1" placeholder="First name" required>
                        <input type="text" name="surname" tabindex="2" placeholder="Surname" required>
                        <input type="text" name="email" tabindex="3" placeholder="Email" required>
                        <input type="submit" value="Create Account" name="submit" class="submit" />
                    </form></li>
        </li>
    </ul>
</li>

</ul>

</li>

</ul>
</div>

<div id="calendar">	
    <table id="calendar_nav_table">
        <tr>
            <td id="prev_link">
                <form method="post" id="selecttable">
                    <input id ="navInputLeft" type="submit" name="PREV" value=" << ">
                    <input type="hidden" name="month" value="<%=prevMonth%>">
                    <input type="hidden" name="year" value="<%=prevYear%>">
                </form>
            </td>
            <td id="link_to_month_view">
                <form method="post" id="selecttable">
                    <input id ="navInputMid"type="submit" value="This Month" class="submit_button">
                    <input type="hidden" name="month" value="<%=currentMonthInt%>">
                    <input type="hidden" name="year"  value="<%=currentYearInt%>">
                </form>
            </td>
            <td id="next_link">
                <form method="post" id="selecttable">
                    <input id ="navInputRight" type="submit" name="NEXT" value=" >> ">
                    <input type="hidden" name="month" value="<%=nextMonth%>">
                    <input type="hidden" name="year" value="<%=nextYear%>">
                </form>
            </td>
        </tr>
    </table>
    <div id="calcontainer">
        <div id="calheader">
            <h2><%=monthName + " " + intYear%></h2>
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
                <%=tm.outputTimetable(userName, cal)%>
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