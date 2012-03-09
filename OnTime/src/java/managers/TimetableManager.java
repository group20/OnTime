package managers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
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
    public String outputTimetable(String user, Calendar cal) throws FileNotFoundException, IOException
    {

        DBManager db = new DBManager();
        ArrayList<Event> events = db.getEventsForUser(user);
        String output = "";
        
        //Output last days of previous month:
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
                    if(e.getStartDateDay() == cal2.get(Calendar.DAY_OF_MONTH) && e.getStartDateMonth() == cal2.get(Calendar.MONTH)+1 && e.getStartDateYear() ==  cal2.get(Calendar.YEAR))
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
                        //******************************************************************
                        for(Event e: eventsForToday) {
                            output += ("            <li class=\"red\"></li>");            //TODO: need to add entry to 
                        //output += ("            <li class=\"green\"></li>");        db for types of events
                        }
                        //***************************************************************88
                        output += ("        </ul>");
                        output += ("    </div>	");
                        output += ("    <!-- slide open -->");
                        output += ("    <div class=\"open\">");
                        output += ("        <ul>");
                        int currEventStart = 0;
                        
                        for(Event e: eventsForToday) {
                            int duration = e.getEndTime() - e.getStartTime();
                            int startTime = e.getStartTime() - currEventStart - duration;
                            output += ("            <li class=\"yellow l" + duration + " a" + startTime + " \"><p>" 
                                                                + e.getStartTime() + ":00 " + e.getDescription() + "</p></li>");
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
                        //******************************************************************
                        
                        //output += ("            <li class=\"yellow\"></li>"); TODO: need to add entry to 
                        //output += ("            <li class=\"green\"></li>");        db for types of events
                        
                        //***************************************************************88
                        output += ("        </ul>");
                        output += ("    </div>	");
                        output += ("    <!-- slide open -->");
                        output += ("    <div class=\"open\">");
                        output += ("        <ul>");
                        int currEventStart = 0;
                        
                        for(Event e: eventsForToday) {
                            int duration = e.getEndTime() - e.getStartTime();
                            int startTime = e.getStartTime() - currEventStart - duration;
                            output += ("            <li class=\"yellow l" + duration + " a" + startTime + " \"><p>"
                                                    + e.getStartTime() + ":00 " + e.getName() + " - " + e.getDescription() + "</p></li>");
                            currEventStart = e.getStartTime();
                            
                        }				
                        output += ("        </ul>");
                        output += ("    </div>	");
                        output += ("    <!-- slide closed -->");
                        output += ("</div>");
                        return output;
    }
}
