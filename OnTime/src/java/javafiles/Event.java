/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javafiles;

import java.util.ArrayList;

/**
 *
 * @author Paul
 */
public class Event {
    
    private String name;
    private String description;
    
    private int startDateDay;
    private int startDateMonth;
    private int startDateYear;
    
    private int endDateDay;
    private int endDateMonth;
    private int endDateYear;
    
    private int startTime;
    private int endTime;
    private String creator;
    private ArrayList<String> invitiees;
    private String frequency;

    
    public Event(String name, String description, String startDate, String endDate, int startTime, 
                        int endTime, String creator, String invitieesString, String frequency) {

        this.name = name;
        this.description = description;
        
        String[] startDates = startDate.split("/");
        this.startDateDay = Integer.parseInt(startDates[0]);
        this.startDateMonth = Integer.parseInt(startDates[1]);
        this.startDateYear = Integer.parseInt(startDates[2]);
        
        String[] endDates = endDate.split("/");
        this.endDateDay = Integer.parseInt(endDates[0]);
        this.endDateMonth = Integer.parseInt(endDates[1]);
        this.endDateYear = Integer.parseInt(endDates[2]);
        
        this.startTime = startTime;
        this.endTime = endTime;
        this.creator = creator;
        this.frequency = frequency;
        
        this.invitiees = new ArrayList<String>();
        String[] invites = invitieesString.split(",");
        for(int i=0;i<invites.length;i++)
        {
            this.invitiees.add(invites[i]);
        }

    }
    
    public String getName() {
        return name;
    }
    
    public String getDescription() {
        return description;

    }
    
    public int getStartDateDay() {
        return startDateDay;
    }
    
    public int getStartDateMonth() {
        return startDateMonth;
    }
    
    public int getStartDateYear() {
        return startDateYear;
    }
    
    public int getEndDateDay() {
        return endDateDay;
    }
    
    public int getEndDateMonth() {
        return endDateMonth;
    }
    
    public int getEndDateYear() {
        return endDateYear;
    }
    
    public int getStartTime() {
        return startTime;
    }
    
    public int getEndTime() {
        return endTime;
    }
    
    public String getCreator() {
        return creator;
    }
    
    public ArrayList<String> getInvitees() {
        return invitiees;
    }
    
    public String getFrequency() {
        return frequency;
    }

    public String getInviteesString() {
        String output = "";
        for(String s : invitiees) {
            output += s + ",";
        }
        output = output.substring(0, (output.length()-2) );
        return output;
    }
}
