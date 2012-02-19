package managers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import javafiles.Event;

public class TimetableManager {

    public TimetableManager()
    {
        
    }
    
    public void outputTimetable(String user) throws FileNotFoundException, IOException
    {
        DBManager db = new DBManager();
        ArrayList<Event> events = db.getEventsForUser(user);
        
        for(int i=0; i<7; i++) {//for 7 days
            
            for(int j = 0; j < 15; j++) { //15 periods in a day???
                
                for(Event e : events)
                {
                    if
                }
                if(true)//if there is an event that period
                {
                    
                    
                } else//if there is NOT an event that period
                {
                    //print out an empty block that the user can click on
                }
            }
        }
    }
}
