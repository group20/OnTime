package managers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javafiles.Event;

import resource.ResourceStrings;

public class DBManager {
//this is a comment
	private Connection conn;
        private Statement statement;
	private String host;
	private String db_userid;
	private String db_password;

	//public DBManager() throws FileNotFoundException, IOException {
        public void initialise(){
		host = ResourceStrings.DB_HOSTNAME;
		db_userid = ResourceStrings.DB_USERNAME;
		db_password = ResourceStrings.DB_PASSWORD;
		conn = dbConnect(host, db_userid, db_password);
        }
	//}

	public Connection dbConnect(String db_connect_string, String db_userid,
			String db_password) {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection(db_connect_string,
					db_userid, db_password);

			System.out.println("connected");
			return conn;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void addUser(String userName, String firstName, String surName, int admin, String email) {
		
		String sqlQuery = "INSERT INTO `group20`.`users`(`username`,`fname`,`lname`,`admin`,`email`)" +
						  "VALUES(" +
                                                  userName + "','" +
						  firstName + "','" +
						  surName + "','" +
						  admin + "','" +
						  email + "');";

		try {
			statement = conn.createStatement();
			statement.execute(sqlQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
        
        public ArrayList<Event> getEventsForUser(String user)
        {
            ArrayList<Event> events = null;
            
            String sqlQuery = "SELECT * FROM 'events' WHERE invitiees LIKE '%" + user + "%';";
            
		try {
                        statement = null;
			statement = (Statement) conn.createStatement();
			ResultSet rs = statement.executeQuery(sqlQuery);
                        
                        while(rs.next()) {
                            events.add(new Event(rs.getInt("id"),
                                                rs.getString("name"),
                                                rs.getString("description"),
                                                rs.getInt("startdateday"), 
                                                rs.getInt("startdatemonth"), 
                                                rs.getInt("startdateyear"), 
                                                rs.getInt("enddateday"), 
                                                rs.getInt("enddatemonth"), 
                                                rs.getInt("enddatemonth"), 
                                                rs.getInt("startTime"), 
                                                rs.getInt("endTime"),
                                                rs.getString("creator"),
                                                rs.getString("invitiees"),
                                                rs.getString("frequency")));
                        }
                        
		} catch (SQLException e) {
			e.printStackTrace();
		}
                
            return events;
        }
        
        

}
