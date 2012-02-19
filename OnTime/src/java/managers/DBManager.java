package managers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javafiles.Event;

import resource.ResourceStrings;

public class DBManager {
//this is a comment
	private Connection conn;
	private String host;
	private String db_userid;
	private String db_password;

	public DBManager() throws FileNotFoundException, IOException {
		host = ResourceStrings.DB_HOSTNAME;
		db_userid = ResourceStrings.DB_USERNAME;
		db_password = ResourceStrings.DB_PASSWORD;
		conn = this.dbConnect(host, db_userid, db_password);
	}

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
	
	public void addUser(String firstName, String surName, char role, String uniID, String userName, String password, int admin, String email) {
		
		String sqlQuery = "INSERT INTO `group20`.`users`(`id`,`fname`,`lname`,`role`,`uniID`,`username`,`password`,`admin`,`email`)" +
						  "VALUES(" +
						  "null,'" +
						  firstName + "','" +
						  surName + "','" +
						  role + "','" +
						  uniID + "','" + 
						  userName + "','" +
						  password + "','" +
						  admin + "','" +
						  email + "');";

		Statement statement;
		try {
			statement = conn.createStatement();
			statement.execute(sqlQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
        
        //wont be void, need database
        public ArrayList<Event> getEventsForUser(String user)
        {
            ArrayList<Event> events = null;
            return events;
        }
        
        

}
