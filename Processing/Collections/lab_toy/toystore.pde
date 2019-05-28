import java.util.Scanner;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import static java.lang.System.*;

public class ToyStore 
{

  public ArrayList<Toy> toyList;

  public ToyStore()
  {
    toyList=new ArrayList<Toy>();
  }



  public void loadToys( String toys )
  {
   
    String[] toyzz = toys.split(" ");
    
    for(String s: toyzz){
     Toy to=getThatToy(s);
     
    if (to==null) {
      toyList.add(new Toy(s));
    } 
    else {
     to.setCount(to.getCount() +1);
    }
    }
    
}

public Toy getThatToy(String nm)
{
  for (Toy t : toyList) {
    if (t.getName().equals(nm)) {
      return t;
    }
  }
  return null;
}

public String getMostFrequentToy()
{
  String mosttoys = "";
  int h = 0;
  for(Toy e: toyList)
  {
    if(e.getCount()>h)
    {
      h=e.getCount();
      mosttoys = e.getName();
    }
  }
  return mosttoys;
}  

public void sortToysByCount()
{
  Collections.sort(toyList);
}  


public String toString()
{
  String ret="";
  for(Toy s: toyList){
    ret = ret + " "+ s.toString();
  }
  
  return "[]\n" + ret + "\n" + "max == " + getMostFrequentToy();

}
}
