package resource;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ResourceStrings {
	
	/**
	 * Declare all variables and config Properties object
	 */
	static Properties configFile;
	public static final String DB_HOSTNAME;
	public static final String DB_USERNAME;
	public static final String DB_PASSWORD;
	
	/**
	 * Load the properties file
	 */
	static{
		configFile = new Properties();
		try {
			configFile.load(new FileInputStream("src/java/resource/config.properties"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	
		/**
		 * Initialise properties variables
		 */
		DB_HOSTNAME = configFile.getProperty("host");
		DB_USERNAME = configFile.getProperty("user");
		DB_PASSWORD = configFile.getProperty("password");
	}

}
