package managers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import resource.ResourceStrings;

public class LoginManager {

	public static void main(String[]args) throws FileNotFoundException, IOException, SQLException{
		DBManager db = new DBManager();
                String[] users = new String[2];
                users[0] = "pmg3";
                users[1] = "ctml1";
                db.getEventsForUsers(users);
                System.out.println();
	}
}
