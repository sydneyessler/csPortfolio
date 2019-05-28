import java.util.ArrayList;
import static java.lang.System.*;

public class IntQueue
{

  private ArrayList<Integer> intlist = new ArrayList<Integer>();

  public IntQueue()
  {
  }

  public int add(int item)
  {
    intlist.add(item);
    return item;
  }
 

  public int remove()
  {
    
    int r = intlist.get(0);
    intlist.remove(0);
    return r;
  }

  public boolean isEmpty()
  {
    if(intlist.size()==0)
      return true;
    else
      return false;
  }

  public int peek()
  {
    return intlist.get(0);
  }

  public String toString()
  {
    return intlist.toString();
  }
}
