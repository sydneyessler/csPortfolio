import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;
import java.io.FileNotFoundException;
int size;
Scanner file;

void setup(){

try{
  file = new Scanner (new File("Desktop/Social/Data/Social.dat"));
  size=file.nextInt();
  file.nextLine();
  
   
    for(int i = 0; i < size; i++)
    {
       String num = file.nextLine();
      //instantiate an Social
      Socials obj = new Socials(num);
      out.println(obj);
    }
}
catch(FileNotFoundException e){
  e.printStackTrace();
  }
  catch (Exception ex){
    System.err.println("Error Reading File");
  }
  finally { 
  file.close();}
}

import static java.lang.System.*;

public class Socials
{
   private String socialNum;

  public Socials()
  {
    socialNum="";
  }

  public Socials(String soc)
  {
    socialNum=soc;
  }

  public void setSocial(String soc)
  {
    socialNum=soc;
  }

  public int getSum()
  {
    Scanner scan = new Scanner(socialNum);
    
    int sum=0;
    
    scan.useDelimiter("\\-");

    while(scan.hasNext())
    {
      int num = scan.nextInt();
      sum = sum + num;
    }

    return sum;
  }

  public String toString()
  {
    return "SS# "+ socialNum+ " has a sum of "+ getSum() + "\n";
  }
}
