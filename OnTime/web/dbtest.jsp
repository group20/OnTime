<%-- 
    Document   : dbtest
    Created on : 20-Feb-2012, 20:08:51
    Author     : Paul
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javafiles.Event"%>
<%@page import="resource.ResourceStrings"%>
<%@page import="managers.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <% DBManager dm = new DBManager();
               out.print(dm.getUserEmail("pmg"));
               out.print(ResourceStrings.DB_HOSTNAME);
               dm.addEvent(new Event(2, "new moar", "soccor practice", 12, 3, 2012, 12, 3, 2012, 15, 16, "pmg", "pmg,jk7,dol5", "weekly"));
               dm.addEvent(new Event(3, "new even moar", "soccor practice", 12, 3, 2012, 12, 3, 2012, 15, 16, "pmg", "pmg,jk7,dol5", "weekly"));
               dm.addEvent(new Event(4, "new even even moar", "soccor practice", 12, 3, 2012, 12, 3, 2012, 15, 16, "pmg", "pmg,jk7,dol5", "weekly"));
               
               ArrayList<Event> events = dm.getEventsForUser("pmg");
               for(Event e: events)
                                 {
                   out.print(e.getName() + "<br />");
               }
       %>
    </body>
</html>
