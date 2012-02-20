package managers;

import java.io.FileNotFoundException;
import java.io.IOException;

public class LoginManager {

	public static void main(String[]args) throws FileNotFoundException, IOException{
		DBManager db = new DBManager();
                db.initialise();
	}
}
