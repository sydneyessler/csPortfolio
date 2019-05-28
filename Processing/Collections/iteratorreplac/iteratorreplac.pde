import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;
import static java.lang.System.*;

public class IteratorReplacer
{
  private ArrayList<String> list;
  private String toRemove, replaceWith;

  public IteratorReplacer(String line, String rem, String rep)
  {
    String[] words = line.split(" ");
    list = new ArrayList<String>(Arrays.asList(words));
    toRemove = rem;
    replaceWith = rep;
  }

  public void setEmAll(String line, String rem, String rep)
  {
    String[] words = line.split(" ");
    list = new ArrayList<String>(Arrays.asList(words));
    toRemove = rem;
    replaceWith = rep;
    replace();
  }

  public void replace()
  {
    ListIterator<String> here = list.listIterator();
    
    while(here.hasNext())
    {
      if(here.next().equals(toRemove))
        here.set(replaceWith);
    }
  }

  public String toString()
  {
    replace();
    return list.toString()+"\n\n";
  }
}
