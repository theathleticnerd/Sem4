import java.io.*;
import java.net.*;
class server{
 public static void main(String args[]) throws Exception
 {
  server myServ=new server();
  myServ.run();
 }
 public void run() throws Exception {
  ServerSocket myss=new ServerSocket(9999);
  Socket ss_accept=myss.accept();
  
  BufferedReader ss_bf=new BufferedReader(new InputStreamReader(ss_accept.getInputStream()));
  String temp=ss_bf.readLine();
  if(temp!=null)
  {
   System.out.println("Message was received successfully from client");
   System.out.println("Message received is '"+temp+"'");
  }  
  else
  {
   System.out.println("Error occurred");
  }
 }
}

