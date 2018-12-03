import static java.lang.System.*;
import java.lang.Math;
import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import java.io.FileNotFoundException;
int size;
Scanner file;

void setup(){
  
  try{
    file = new Scanner (new File("Desktop/Primes/data/Prime.dat"));
    size=file.nextInt();
    file.nextLine();
  
     for(int i=0; i<size; i++)
     {
       int num = file.nextInt();
       Prime obj = new Prime(num);
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
public class Prime
{
  private int number;

  public Prime()
  {
    number=0;
  }
  
  public Prime(int num)
  {
    number = num;
  }
  
  public void setPrime(int num)
  {
    number = num;
  }

  //boolean isPrime()   goes here
  public boolean isPrime()
  {
    for(int i=2;i<number;i++) {
        if(number%i==0){
            return false;}
    }
    return true;
  }

  public String toString()
  {
    if (isPrime())
      return number + " is prime.\n";
    else
      return number + " is not prime.\n";
  }
}
