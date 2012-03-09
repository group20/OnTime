<%-- 
    Document   : addevent
    Created on : 07-Mar-2012, 17:22:39
    Author     : paul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <script language="JavaScript" src="CalendarPopup.js"></script>
        <script language="JavaScript" src="common.js"></script>
        <SCRIPT LANGUAGE="JavaScript">document.write(getCalendarStyles());</SCRIPT>
        <link rel="stylesheet" href="css/style.css?v=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>onTime</title>
    </head>
    <body>
        <form name="addevent "id="addevent" method="post" action="addNewEvent.jsp">
            <h2>New Event</h2>
            <input type="text" name="name" tabindex="1" placeholder="Title" required />
            <input type="text" size="25" name="description" tabindex="2" placeholder="Description" />
            <script language="JavaScript" id="jscal1x">
                var cal1x = new CalendarPopup("testdiv1");
            </script>
            <input type="text" name="startdate" tabindex="3" placeholder="Start Date" required >
            <a href="#" onClick="cal1x.select(document.forms['addevent'].startdate,'anchor1x','dd/MM/yyyy');return false;" 
               TITLE="cal1x.select(document.forms['addevent'].startdate,'anchor1x','dd/MM/yyyy'); return false;" NAME="anchor1x" ID="anchor1x">select</a>
            <script language="JavaScript" id="jscal2x">
                var cal2x = new CalendarPopup("testdiv1");
            </script>
            <input type="text" name="enddate" tabindex="4" placeholder="End Date" required >
            <a href="#" onClick="cal1x.select(document.forms['addevent'].enddate,'anchor2x','dd/MM/yyyy');return false;" 
               title="cal2x.select(document.forms['addevent'].enddate,'anchor2x','dd/MM/yyyy'); return false;" NAME="anchor2x" ID="anchor2x">select</a>

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
    </body>
</html>
