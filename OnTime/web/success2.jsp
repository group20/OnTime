<%-- 
    Document   : success2
    Created on : Feb 17, 2012, 8:15:06 PM
    Author     : Donnchadh

notes: Must create function to highlight the current day (.today)
    Must create function to make the current week bigger (.big)
--%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<%@page session="true" import="java.util.*" %>
<jsp:useBean id="Event" scope="session" class="javafiles.Event" />

<%! public void outputTimetable(String user, Calendar cal)
{
        System.out.print("<div id=\"calendar\">");				
        System.out.print("    <div id=\"calcontainer\">");
        System.out.print("        <div id=\"calheader\">");
        System.out.print("            <h2>" + cal.MONTH + " " + cal.YEAR + "</h2>");
        System.out.print("        </div>		");
        System.out.print("        <div id=\"daysweek\">");
        System.out.print("            <div class=\"dayweek\"><p>Monday</p></div>");
        System.out.print("            <div class=\"dayweek\"><p>Tuesday</p></div>");
        System.out.print("            <div class=\"dayweek\"><p>Wednesday</p></div>");
        System.out.print("            <div class=\"dayweek\"><p>Thursday</p></div>");
        System.out.print("            <div class=\"dayweek\"><p>Friday</p></div>");
        System.out.print("            <div class=\"dayweek\"><p>Saturday</p></div>");
        System.out.print("            <div class=\"dayweek brn\"><p>Sunday</p></div>");
        System.out.print("        </div>");
        System.out.print("        <div id=\"daysmonth\">");

        int currentDay = 1;//first monday

        for(int i=0; i<5; i++) {//for 5 weeks
            System.out.print("<div class= \"week\">");
            for(int j = 0; j < 7; j++) { //7 days
                ArrayList<Event> todaysEvents = null;

                if(currentDay % 7 == 0)
                {
                    System.out.print(outputdayBrn(currentDay, todaysEvents));
                } else {
                    System.out.print(outputDay(currentDay, todaysEvents));
                }
                currentDay++;
            }
            System.out.print("    </div>");
        }

        System.out.print("                </div>");
        System.out.print("    </div>");			
        System.out.print("    <div id=\"calcat\">");
        System.out.print("        <div class=\"caldot blue\"></div><p>Lecture</p>");
        System.out.print("        <div class=\"caldot yellow\"></div><p>Tutorial</p>");
        System.out.print("        <div class=\"caldot green\"></div><p>Student Meeting</p>");
        System.out.print("        <div class=\"caldot red\"></div><p>Lecturer Meeting</p>");
        System.out.print("    </div>");
        System.out.print("</div>");
        System.out.print("</div>");
}
%>

<%! public void outputDay(int dayNumber, ArrayList<Event> eventsForToday ) {

    System.out.print("<div class=\"day\">");
                        System.out.print("    <div class=\"daybar\"><p>" + dayNumber + "</p></div>");
                        System.out.print("    <div class=\"dots\">");
                        System.out.print("        <ul>");
                        //******************************************************************

                        //System.out.print("            <li class=\"yellow\"></li>"); TODO: need to add entry to 
                        //System.out.print("            <li class=\"green\"></li>");        db for types of events

                        //***************************************************************88
                        System.out.print("        </ul>");
                        System.out.print("    </div>	");
                        System.out.print("    <!-- slide open -->");
                        System.out.print("    <div class=\"open\">");
                        System.out.print("        <ul>");
                        int currEventStart = 0;				
                        System.out.print("        </ul>");
                        System.out.print("    </div>	");
                        System.out.print("    <!-- slide closed -->");
                        System.out.print("</div>		");
}

%>

<%! public void outputDayBrn(int dayNumber, ArrayList<Event> eventsForToday) {

    System.out.print("<div class=\"day brn\">");
                        System.out.print("    <div class=\"daybar\"><p>" + dayNumber + "</p></div>");
                        System.out.print("    <div class=\"dots\">");
                        System.out.print("        <ul>");
                        //******************************************************************

                        //System.out.print("            <li class=\"yellow\"></li>"); TODO: need to add entry to 
                        //System.out.print("            <li class=\"green\"></li>");        db for types of events

                        //***************************************************************88
                        System.out.print("        </ul>");
                        System.out.print("    </div>	");
                        System.out.print("    <!-- slide open -->");
                        System.out.print("    <div class=\"open\">");
                        System.out.print("        <ul>");
                        int currEventStart = 0;

//                        for(Event e: eventsForToday) {
//                            int duration = e.getEndTime() - e.getStartTime();
//                            int startTime = e.getStartTime() - currEventStart - duration;
//                            System.out.print("            <li class=\"yellow l" + duration + " a" + startTime + " \"><p>" 
//                                                                + e.getStartTime() + ":00 " + e.getDescription() + "</p></li>");
//                            currEventStart = e.getStartTime();
//                            
//                        }				
                        System.out.print("        </ul>");
                        System.out.print("    </div>	");
                        System.out.print("    <!-- slide closed -->");
                        System.out.print("</div>		");

        }



%>

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

            <%=outputTimetable(userName,cal)%>
</body>
<footer>A Team 20 Project.</footer>
</html>