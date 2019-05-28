import static java.lang.System.*;
import java.lang.Math;
import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import java.io.FileNotFoundException;
int size;
Scanner file;
String s;

void setup(){
 try{
    file = new Scanner (new File("Desktop/TheLine/data/TheLine.dat"));
    size=file.nextInt();
    file.nextLine();
  
     for(int i=0; i<size; i++)
     {
       String s = file.nextLine();
       TheLines obj = new TheLines(s);
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



public class TheLines
{
   private String line;

   public TheLines()
   {
     line = "";
   }

   public TheLines(String s)
   {
     line = s;
   }

  public int getLargest()
  {
    
    Scanner scan = new Scanner(line); 
    
    int largest = Integer.MIN_VALUE;
    while(scan.hasNextInt())
    {
      int c = scan.nextInt();
      if (c>largest)
      { 
        largest = c;
      }
    }
    return largest;
  }

  public String toString( )
  {
    return s + " - Largest == " + getLargest() + "\n";
  }
}
