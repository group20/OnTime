package managers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import javafiles.Event;

public class TimetableManager {

    public TimetableManager()
    {

    }
    /**
     * Outputs a timetable for a week for a given user
     * Times will be stored in the db as integers eg period 1,2,3 etc
     * @param user
     * @throws FileNotFoundException
     * @throws IOException 
     */
    public String outputTimetable(Calendar cal, ArrayList<Event> events) throws FileNotFoundException, IOException
    {
        String output = "";
        
        Calendar cal2 = cal;
        cal2.set(cal.get(cal.YEAR),cal.get(cal.MONTH),1);
        cal2.setFirstDayOfWeek(Calendar.MONDAY);
        int lastMonthCount = cal2.get(cal2.DAY_OF_WEEK) - 2;
        if(lastMonthCount < 0) lastMonthCount = 6;
        cal2.add(Calendar.DAY_OF_MONTH,-lastMonthCount);
        
        
        int dayCount = 1;
        for(int i=0; i<42; i++) {
            ArrayList<Event> todaysEvents = new ArrayList<Event>();
                for(Event e : events)
                {
                    if(e.getStartDateDay() == cal2.get(cal2.DAY_OF_MONTH) && e.getStartDateMonth() == cal2.get(cal2.MONTH)+1 && e.getStartDateYear() ==  cal2.get(cal2.YEAR))
                    {
                        todaysEvents.add(e);
                    }
                }
                if(dayCount == 7)
                {
                    output += outputDayBrn(cal2.get(Calendar.DAY_OF_MONTH), todaysEvents);
                    dayCount = 0;
                    output += "</div>";
                    if(i != 41)
                    {
                        output += "<div class=\"week\">";
                    }
                    
                }
                else
                {
                    output += outputDay(cal2.get(Calendar.DAY_OF_MONTH), todaysEvents);
                }
                cal2.add(Calendar.DAY_OF_MONTH,1);
                dayCount++;
        }
        return output;
    }
    
    private String outputDay(int dayNumber, ArrayList<Event> eventsForToday ) {
                        String output = "";
                        output += ("<div class=\"day\">");
                        output += ("    <div class=\"daybar\"><p>" + dayNumber + "</p></div>");
                        output += ("    <div class=\"dots\">");
                        output += ("        <ul>");
                        for(Event e: eventsForToday) {
                            switch(e.getType()) {
                                case 0:
                                    output += ("            <li class=\"blue\"></li>");
                                    break;
                                case 1:
                                    output += ("            <li class=\"yellow\"></li>");
                                    break;
                                case 2:
                                    output += ("            <li class=\"green\"></li>");
                                    break;
                                case 3:
                                    output += ("            <li class=\"red\"></li>");
                                    break;
                            }
                        }
                        output += ("        </ul>");
                        output += ("    </div>	");
                        output += ("    <!-- slide open -->");
                        output += ("    <div class=\"open\">");
                        output += ("        <ul>");
                        int currEventStart = 0;
                        
                        for(Event e: eventsForToday) {
                            int duration = e.getEndTime() - e.getStartTime();
                            int startTime = e.getStartTime() - currEventStart - duration;
                            switch(e.getType()) {
                                case 0:
                                    output += ("            <li class=\"blue l");
                                    break;
                                case 1:
                                    output += ("            <li class=\"yellow l");
                                    break;
                                case 2:
                                    output += ("            <li class=\"green l");
                                    break;
                                case 3:
                                    output += ("            <li class=\"red l");
                                    break;
                            }
                       
                            output += ("" + duration + " a" + startTime + " \"><p>" + e.getStartTime() + ":00 - " 
                                        +e.getEndTime() + ":00 " + e.getName() + "<br />" + e.getDescription() + "</p></li>");
                            currEventStart = e.getStartTime();
                         }    
                        				
                        output += ("        </ul>");
                        output += ("    </div>	");
                        output += ("    <!-- slide closed -->");
                        output += ("</div>");
                        
                 return output;
    }
    
    private String outputDayBrn(int dayNumber, ArrayList<Event> eventsForToday) {
                        String output = "";
                        output += ("<div class=\"day brn\">");
                        output += ("    <div class=\"daybar\"><p>" + dayNumber + "</p></div>");
                        output += ("    <div class=\"dots\">");
                        output += ("        <ul>");
                        for(Event e: eventsForToday) {
                            switch(e.getType()) {
                                case 0:
                                    output += ("            <li class=\"blue\"></li>");
                                    break;
                                case 1:
                                    output += ("            <li class=\"yellow\"></li>");
                                    break;
                                case 2:
                                    output += ("            <li class=\"green\"></li>");
                                    break;
                                case 3:
                                    output += ("            <li class=\"red\"></li>");
                                    break;
                            }
                        }
                        output += ("        </ul>");
                        output += ("    </div>	");
                        output += ("    <!-- slide open -->");
                        output += ("    <div class=\"open\">");
                        output += ("        <ul>");
                        int currEventStart = 0;
                        
                        for(Event e: eventsForToday) {
                            int duration = e.getEndTime() - e.getStartTime();
                            int startTime = e.getStartTime();// - currEventStart - duration;
                            switch(e.getType()) {
                                case 0:
                                    output += ("            <li class=\"blue l");
                                    break;
                                case 1:
                                    output += ("            <li class=\"yellow l");
                                    break;
                                case 2:
                                    output += ("            <li class=\"green l");
                                    break;
                                case 3:
                                    output += ("            <li class=\"red l");
                                    break;
                            }
                            output += ("" + duration + " a" + startTime + " \"><p>"
                                        + e.getStartTime() + ":00 " + e.getName() + " - " + e.getDescription() + "</p></li>");
                            currEventStart = e.getStartTime();
                            
                        }				
                        output += ("        </ul>");
                        output += ("    </div>	");
                        output += ("    <!-- slide closed -->");
                        output += ("</div>");
                        return output;
    }
    
    
    public String outputFreeSlots(String[] users, Calendar cal) throws FileNotFoundException, IOException{
       String output = "";
       DBManager db = new DBManager();
       
       cal.set(cal.get(cal.YEAR),cal.get(cal.MONTH),1);
       cal.setFirstDayOfWeek(Calendar.MONDAY);
        int lastMonthCount = cal.get(cal.DAY_OF_WEEK) - 2;
        if(lastMonthCount < 0) lastMonthCount = 6;
        cal.add(Calendar.DAY_OF_MONTH,-lastMonthCount);
       ArrayList<Event> resultEvents = new ArrayList<Event>();
       ArrayList<Event> events = db.getEventsForUsers(users);
           
       for(int i = 0; i < 42; i++) {
           int count = 0;
           int currYear = cal.get(cal.YEAR);
           int currMonth = cal.get(cal.MONTH)+1;
           int currDay = cal.get(cal.DAY_OF_MONTH);
           String currDate = "" + currDay + "/" + currMonth + "/" + currYear;
           //for each period between 8am and 8pm
           for(int j=8; j<20; j++) {
                for(Event e : events)
                {
                    if(e.getStartDateDay() == cal.get(Calendar.DAY_OF_MONTH) && e.getStartDateMonth() == cal.get(Calendar.MONTH)+1 && e.getStartDateYear() ==  cal.get(Calendar.YEAR) && e.getStartTime() == j)
                    {
                        count++;
                    }

                }
               //now add the results for this period to the list of events
               int type = (count==0)?0:3;
               
               resultEvents.add(new Event("", ""+count,
                                        currDate, currDate, j, j+1, "", "", "",type));
               count = 0;
           }
           cal.add(Calendar.DAY_OF_MONTH,1);
           System.out.println(currDate);
       }
       cal.add(Calendar.MONTH,-1);
       return outputTimetable(cal, resultEvents);
    }
}