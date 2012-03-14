<%--
    Document : success
    Created on : Feb 17, 2012, 8:15:06 PM
    Author : Donnchadh

notes: Must create function to highlight the current day (.today)
       Must create function to make the current week bigger (.big) testingg
--%>

<%@page import="managers.DBManager"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<%@page session="true" import="java.util.*" %>
<jsp:useBean id="tm" scope="page" class="managers.TimetableManager" />
<%@ page import="javafiles.Event" %>

<%
    String userName = (String) session.getAttribute("sessUserName");
    if (userName == null) {
        response.sendRedirect(".");
    }
%>

<%
    
    DBManager db = new DBManager();
    ArrayList<Event> events = db.getEventsForUser(userName);
 
    Calendar cal = Calendar.getInstance();
    int offset = 0;
    if(request.getParameter("offset") != null) {
        offset = Integer.parseInt(request.getParameter("offset"));
    }
    if(request.getParameter("month") != null && request.getParameter("month").equals("prev")) {
        offset--;
        cal.add(Calendar.MONTH,offset);
    } else if(request.getParameter("month") != null && request.getParameter("month").equals("next")) {
        offset++;
        cal.add(Calendar.MONTH,offset);
    }
   
    int yearInt = cal.get(Calendar.YEAR);
    int monthInt = cal.get(Calendar.MONTH);
    
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

    String monthName = monthNames[monthInt];
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
        <link rel="stylesheet" href="css/addEvStyle.css?v=1.0">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript" src="jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="script.js"></script>
        <script language="JavaScript" src="CalendarPopup.js"></script>
        <script language="JavaScript" src="common.js"></script>
        <SCRIPT LANGUAGE="JavaScript">document.write(getCalendarStyles());</SCRIPT>
        <script type="text/javascript" src="jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="jquery-ui-1.8.custom.min.js"></script>
        <script type="text/javascript">var count=1;</script>
        <script type="text/javascript">
            var count = 0;
            function initMenu() {
                var block = $(".day");
                
                $('.open').hide();
                block.click(
                function() {
                    $(this).parents('div:eq(0)').find('.open').slideToggle('fast');
                }
            );}
            $(document).ready(function() {initMenu();});
            
             $(function(){

                    //attach autocomplete
                    $("#to").autocomplete({

                    //define callback to format results
                    source: function(req, add){

                    //pass request to server
                    $.getJSON("http://localhost/xampp/names.php?callback=?", req, function(data) {

                    //create array for response objects
                    var suggestions = [];

                    //process response
                    $.each(data, function(i, val){
                    suggestions.push(val.name);
                    });

                    //pass array to callback
                    add(suggestions);
                    });
                    },

                    //define select handler
                    select: function(e, ui) {


                    //create formatted friend
                    var friend = ui.item.value,
                    span = $("<span>").text(friend),

                    input= $("<input>").attr({type: "hidden", name: "invitees" +count, value: friend}),

                    a = $("<a>").addClass("remove").attr({
                    href: "javascript:",
                                                                                    input: "",
                    title: "Remove " + friend
                    }).text(" x").appendTo(span);

                    //add friend to friend div
                                                                    input.insertBefore("#to");
                    span.insertBefore("#to");
                                                                count++;
                    },

                    //define select handler
                    change: function() {

                    //prevent 'to' field being updated and correct position
                    $("#to").val("").css("top", 2);
                    }
                    });

                    //add click handler to friends div
                    $("#to").click(function(){

                    //focus 'to' field
                    $("#to").focus();
                    });

                    //add live handler for clicks on remove links
                    $(".remove", document.getElementById("friends")).live("click", function(){

                    //remove current friend
                    $(this).parent().remove();

                    //correct 'to' field position
                    if($("#friends span").length === 0) {
                    $("#to").css("top", 0);
                    }
                    });
                    });
        </script>
        <!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    </head>
    <body>
        <div id="wrapper">
        <div id="welcome">
             <p>You have successfully logged into Team 20's Timetable System</p>
            <%
                out.print("UserName : " + session.getAttribute("sessUserName"));
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
                                        <input id ="inputtest" type="text" name="name" tabindex="1" placeholder="Title" required />
                                        <input id ="inputtest" type="text" size="25" name="description" tabindex="2" placeholder="Description" />
                                        <script language="JavaScript" id="jscal1x">
                                            var cal1x = new CalendarPopup("testdiv1");
                                        </script>
                                        <a href="#" onClick="cal1x.select(document.forms['addevent'].startdate,'anchor1x','dd/MM/yyyy');return false;"
                                           TITLE="cal1x.select(document.forms['addevent'].startdate,'anchor1x','dd/MM/yyyy'); return false;" NAME="anchor1x" ID="anchor1x"><input id ="inputtest" type="text" name="startdate" tabindex="3" placeholder="Start Date" required ></a>

                                        <script language="JavaScript" id="jscal2x">
                                            var cal2x = new CalendarPopup("testdiv1");
                                        </script>
                                        <a href="#" onClick="cal1x.select(document.forms['addevent'].enddate,'anchor2x','dd/MM/yyyy');return false;"
                                           title="cal2x.select(document.forms['addevent'].enddate,'anchor2x','dd/MM/yyyy'); return false;" NAME="anchor2x" ID="anchor2x"><input id ="inputtest" type="text" name="enddate" tabindex="4" placeholder="End Date" required ></a>

                                        <h2>Start time</h2>
                                        <select type="time" name="starttime">
                                        <option value="8">08:00</option>
                                        <option value="9">09:00</option>
                                        <option value="10">10:00</option>
                                        <option value="11">11:00</option>
                                        <option value="12">12:00</option>
                                        <option value="13">13:00</option>
                                        <option value="14">14:00</option>
                                        <option value="15">15:00</option>
                                        <option value="16">16:00</option>
                                        <option value="17">17:00</option>
                                        <option value="18">18:00</option>
                                        <option value="19">19:00</option>
                                        <option value="20">20:00</option>
                                        </select>
                                         <br/>
                                         <h2>End time</h2>
                                        <select type="time" name="endtime">
                                        <option value="8">08:00</option>
                                        <option value="9">09:00</option>
                                        <option value="10">10:00</option>
                                        <option value="11">11:00</option>
                                        <option value="12">12:00</option>
                                        <option value="13">13:00</option>
                                        <option value="14">14:00</option>
                                        <option value="15">15:00</option>
                                        <option value="16">16:00</option>
                                        <option value="17">17:00</option>
                                        <option value="18">18:00</option>
                                        <option value="19">19:00</option>
                                        <option value="20">20:00</option>
                                        </select>
                                        <!--<input type="time" name="starttime" tabindex="5" placeholder="Start Time" required />-->
                                        <!--<input type="time" name="endtime" tabindex="6" placeholder="End Time" required />-->
                                        <!--<input type="text" name="invitiees" placeholder="Who's going?" tabindex="7" />-->
                                        
                                          <div id="friends" class="ui-helper-clearfix">
                                              <label id="toLabel">People to meet:</label>
                                                <input id ="inputtest" name="invitiees" id="to" type="text" />
                                            </div>
                                        <select name="frequency" >
                                            <option value="0">One-time event</option>
                                            <option value="1">Daily</option>
                                            <option value="2">Weekly</option>
                                            <option value="3">Monthly</option>
                                        </select>
                                        <div id="radio">
                                        <input type="radio" name="type" value="0" />Lecture 
                                        <input type="radio" name="type" value="1" />Tutorial 
                                        <input type="radio" name="type" value="2" />Student Meeting 
                                        <input type="radio" name="type" value="3" />Lecturer Meeting 
                                        </div>
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



</ul>
</div>

            
             
<div id="calendar">
                     <table>
        <tr>
            <td id="prev_link">
                <form method="post" id="selecttable">
                    <input id ="navInputLeft" type="submit" name="PREV" value=" << ">
                    <input type="hidden" name="month" value="prev">
                    <input type="hidden" name="offset" value="<%=offset%>">
                </form>
            </td>
            <td id="link_to_month_view">
                <form method="post" id="selecttable">
                    <input id ="navInputMid"type="submit" value="This Month" class="submit_button">
                    <input type="hidden" name="month" value="current">
                    <input type="hidden" name="offset" value="0">
                </form>
            </td>
            <td id="next_link">
                <form method="post" id="selecttable">
                    <input id ="navInputRight" type="submit" name="NEXT" value=" >> ">
                    <input type="hidden" name="month" value="next">
                    <input type="hidden" name="offset" value="<%=offset%>">
                </form>
            </td>
        </tr>
    </table>
    <div id="calcontainer">
        
        <div id="calheader">
            <h2><%=monthName + " " + yearInt%></h2>
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
                <%=tm.outputTimetable(cal,events)%>
                <%
                String[] users = new String[2];
                users[0]="pmg3";
                users[1]="ctml1";
                %>
                <%//=tm.outputFreeSlots(users, cal)%>
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
</div>
<footer>A Team 20 Project.</footer>
</html>
