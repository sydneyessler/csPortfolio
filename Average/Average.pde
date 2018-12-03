import java.util.Scanner;
import static java.lang.System.*;
import java.io.IOException;
import java.io.File;
import java.io.FileNotFoundException;
int size;
Scanner file;

void setup(){
  
  try{
  file = new Scanner (new File("Desktop/Average/Data/Average.dat"));
  size=file.nextInt();
  file.nextLine();
  
   
    for(int i = 0; i < size; i++)
    {
       String nums = file.nextLine();
      //instantiate an Average 
      average obj = new average(nums);
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
  //file.close();
}
}

public class average
{
   private String line;

   //write two constructors
   public average()
   {
     line="";
   }
   
   public average(String nums)
   {
     line=nums;
   }

  //write a setLine method
  public void setLine(String nums)
  {
      line=nums;
  }


  public int getLowest()
  {
    Scanner scan = new Scanner(line);
    int lowest=Integer.MAX_VALUE;
    
    while(scan.hasNextInt())
    {
       int num = scan.nextInt();
       if (num<lowest)
       num = lowest;
    }
    
    return lowest;
  }

  public double getAverage()
  {
    Scanner scan = new Scanner(line);
    double average=0.0;
    int total= 0;
    double numofnums = 0.0;
    
    while (scan.hasNextInt())
    {
      int n =scan.nextInt();
      total = total +n;
      numofnums++;
    }
    
    average = total/numofnums;
    
    return average;
  }

  //write a getLine method
public String getLine()
{
Scanner scan = new Scanner(line);
  String lineofnums = "";
  
  while(scan.hasNextInt())
  {
    lineofnums = lineofnums + scan.nextInt() + " ";
  }
  
  return lineofnums;
}



  //write a toString method
  public String toString()
  {
    return getLine() + "\n" + "average " + getAverage();
    
  }

}
