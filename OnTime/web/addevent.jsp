<%-- 
    Document   : addevent
    Created on : 07-Mar-2012, 17:22:39
    Author     : paul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="login" method="post" action="addNewEvent.jsp">
            <h2>New Event</h2>
            <input type="text" name="name" tabindex="1" placeholder="Title" required />
            <input type="text" size="25" name="description" tabindex="2" placeholder="Description" />
            <input type="text" name="startdate" tabindex="3" placeholder="Start Date" required >
            <input type="text" name="enddate" tabindex="4" placeholder="End Date" required >
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
    </body>
</html>
