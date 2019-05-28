import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.Scanner;
import static java.lang.System.*;

public class OddEvenSets
{
  private Set<Integer> odds;
  private Set<Integer> evens;

  public OddEvenSets()
  {
  }

  public OddEvenSets(String line)
  {
    ArrayList<Integer> ints = new ArrayList<Integer>();
    odds = new TreeSet<Integer>();
    evens = new TreeSet<Integer>();
    
    for(String s: line.split(" "))
    {
      int num = Integer.parseInt(s);
      ints.add(num);
    }
    for(Integer n:ints)
    {
      if(n%2==0)
      evens.add(n);
      if(n%2!=0)
      odds.add(n);
    }
  }

  public String toString()
  {
    return "ODDS : " + odds + "\nEVENS : " + evens + "\n\n";
  }
}
