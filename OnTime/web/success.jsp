<%-- 
    Document   : success
    Created on : Feb 17, 2012, 8:15:06 PM
    Author     : Donnchadh
--%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>

<%
/*           String userName = null; //TODO: possibly more secure using try catch?
            try {
                

            } catch (Exception e) {
            }
            if (userName == null) {
               
            }*/
            String userName = (String) session.getAttribute("sessUserName");
           if(userName == null)
                             {
                                response.sendRedirect(".");
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
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    </head>
    <body>
        <script src="js/scripts.js"></script>
        <p>You have successfully logged into Team 20's Timetable System</p>
        <%
                    out.print("UserName :" + session.getAttribute("sessUserName") + "<br>");
        %>
        <table>
            <caption>This is our timetable
            </caption>
            <colgroup />
            <colgroup span="6" title="title" />
            <thead>
                <tr>
                    <th scope="col">Monday</th>
                    <th scope="col">Tuesday</th>
                    <th scope="col">Wednesday</th>
                    <th scope="col">Thursday</th>
                    <th scope="col">Friday</th>
                    <th scope="col">Saturday</th>
                    <th scope="col">Sunday</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>10:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>
            </tfoot>
            <tbody>
                <tr>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>
                <tr>
                    <td>09:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>
                              
                <tr>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
    
                </tr>
                <tr>
                    <td>09:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>
                 <tr>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>
                <tr>
                    <td>09:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>

                <tr>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>

                </tr>
                <tr>
                    <td>09:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>
                 <tr>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>
                <tr>
                    <td>09:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>

                <tr>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>

                </tr>
                <tr>
                    <td>09:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                    <td>08:00</td>
                </tr>
            </tbody>
        </table>
        <a href="logout.jsp"><b>Logout</b></a>
    </body>
    <footer>A Team 20 Project.</footer>
</html>