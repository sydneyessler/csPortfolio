import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;

public class OddOrEvenRunner
{
  public static void main( String args[] ) throws IOException
  {
    Scanner file = new Scanner(new File("oddoreven.dat"));
    int size = file.nextInt();
    file.nextLine();
    for(int i = 0; i < size; i++)
    {
       int num = file.nextInt();
      //instantiate an OddOrEven
    }
  }
}


import static java.lang.System.*;

public class OddOrEven
{
  private int number;

  public OddOrEven()
  {
  }

  public OddOrEven(int num)
  {
  }

  public void setNum(int num)
  {
  }

  public boolean isOdd( )
  {



    return false;
  }

  public String toString()
  {



    return number+" is even.\n\n";
  }
}
