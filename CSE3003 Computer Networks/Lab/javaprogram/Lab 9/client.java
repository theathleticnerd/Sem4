import java.io.*;
import java.net.*;
import java.util.Scanner;
class client{
 public static void main(String args[]) throws Exception
 {
  client myCli=new client();
  myCli.run();
 }
 public void run() throws Exception
 {
  Scanner sc=new Scanner(System.in);
  Socket myskt=new Socket("localhost",9999);
  PrintStream myps=new PrintStream(myskt.getOutputStream());
  System.out.println("Enter any message:");
  myps.println(sc.nextLine());
 }
 }
