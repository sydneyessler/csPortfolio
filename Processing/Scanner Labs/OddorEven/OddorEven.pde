import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;
import java.io.FileNotFoundException;
int size;
Scanner file;

void setup(){

try{
  file = new Scanner (new File("Desktop/OddorEven/data/oddEven.dat"));
  size=file.nextInt();
  file.nextLine();
  
   
    for(int i = 0; i < size; i++)
    {
       int num = file.nextInt();
      //instantiate an OddOrEven
      OddOrEven obj = new OddOrEven(num);
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


public class OddOrEven
{
  private int number;

  public OddOrEven()
  {
    number=0;
  }

  public OddOrEven(int num)
  {
    number=num;
  }

  public void setNum(int num)
  {
    number=num;
  }

  public boolean isOdd( )
  {
  if (number%2==1){
      return true;}
else
  return false;
  }

  public String toString()
  {
      if(isOdd())
        return number +" is odd.\n";
      else
        return number+" is even.\n";
  }
}
