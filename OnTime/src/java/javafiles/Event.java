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
    
    private int id;
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

    
    public Event(int id, String name, String description, int startDateDay, int startDateMonth, int startDateYear, int endDateDay, 
                    int endDateMonth, int endDateYear, int startTime, int endTime, String creator, String invitiees, String frequency) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.startDateDay = startDateDay;
        this.startDateMonth = startDateMonth;
        this.startDateYear = startDateYear;
        this.endDateDay = endDateDay;
        this.endDateMonth = endDateMonth;
        this.endDateYear = endDateYear;
        this.startTime = startTime;
        this.endTime = endTime;
        this.creator = creator;
        this.frequency = frequency;
        
        String[] invites = invitiees.split(",");
        for(int i=0;i<invites.length;i++)
        {
            this.invitiees.add(invites[i]);
        }

    }
    
    public int getID(){
        return id;
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
}
