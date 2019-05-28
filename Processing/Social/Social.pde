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
       String soc = file.nextLine();
      //instantiate an OddOrEven
      SocialS obj = new SocialS(soc);
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


public class SocialS
{
   private String socialNum;

  public SocialS()
  {
    socialNum="";
  }

  public SocialS(String soc)
  {
    socialNum=soc;
  }

  public void setSocial(String soc)
  {
    socialNum=soc;
  }

  public int getSum()
  {
    int sum = 0;
    file.useDelimiter("\\-");
    
    while(file.hasNext())
    {
      int number = file.nextInt();
      sum = sum+number;
    }
    return sum;
  }

  public String toString()
  {
    return "SS# " + socialNum + " has a sum of " + getSum();
  }
}
