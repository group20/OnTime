package javafiles;

/**
 *
 * @author Donnchadh
 */

import java.net.*;
import java.io.*;
import java.util.*;

public class validator {
// Validate pop password by attemting to log into a pop server
// Version 1.0

private String popHosts;
private boolean debugOn = false;

public validator() 
{
popHosts = "pop.student.cs.ucc.ie";
} // End popPasswordValidator constructor

public void switchStatedebugon()
{
if(debugOn)
debugOn=false;
else
debugOn = true;
}

public boolean valid(String userid, String password) 
{
if(debugOn)
return true;

boolean result = false;

int popPort = 110;
String popHost = popHosts;
PrintStream ps;
BufferedReader dis;

try {
Socket socket = new Socket(popHost, popPort);
ps = new PrintStream(socket.getOutputStream());
dis = new BufferedReader(new InputStreamReader(socket.getInputStream()));
String response = dis.readLine();
ps.println("USER " + userid);
response = dis.readLine();
ps.println("PASS " + password);
response = dis.readLine();
// If the correct username and password are sent the the server 
// should return a '+' character
if (response.charAt(0) != '+') 
result = false;
else
result = true;

ps.println("quit\n\n"); // Signout of the pop server
socket.close();
} catch (IOException ioe) {
System.out.println("Error popPasswordValidator.valid " + ioe.toString());
}
return result;
} // End valid

} // End class popPasswordValidator