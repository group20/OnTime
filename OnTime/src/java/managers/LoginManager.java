package managers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import resource.ResourceStrings;

public class LoginManager {

	public static void main(String[]args) throws FileNotFoundException, IOException, SQLException{
		System.out.println(ResourceStrings.DB_HOSTNAME);
                System.out.println(ResourceStrings.DB_PASSWORD);
                System.out.println(ResourceStrings.DB_USERNAME);
	}
}
