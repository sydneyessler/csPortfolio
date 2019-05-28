import static java.lang.System.*;
import java.util.Collections;

public class Toy implements Comparable<Toy>
{
  private String name;
  private int count;

  public Toy()
  {
  }
  
   public Toy( String nm )
  {
    name = nm;
    count = 1;
  }

  public Toy( String nm, int c )
  {
    name = nm;
    count = c;
  }
  
  public int getCount()
  {
    return count;
  }
  
  public void setCount( int cnt )
  {
    count = cnt;
  }
  
  public String getName()
  {
    return name;
  }
  
  public void setName( String nm )
  {
    name = nm;
  }
  
  public int compareTo(Toy t2){
  if(this.getCount()> t2.getCount()){
    return 1;
  }
  if(this.getCount()< t2.getCount()){
    return -1;
  }
  else return 0;
}

  public String toString()
  {
     return name + " " + count;
  }
}
