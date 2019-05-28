import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.Scanner;
import static java.lang.System.*;

public class Relatives
{
  private Map<String,Set<String>> map;

  public Relatives()
  {

map = new TreeMap<String,Set<String>>();
  }

  public void setPersonRelative(String line)
  {
    String[] pr = line.split(" ");
    String k = pr[0];
    String r = pr[1];
    if(map.get(k)==null){
      map.put(k, new TreeSet<String>());
    }
    map.get(k).add(r);

  }


  public String getRelatives(String person)
  {
    return "";
  }


  public String toString()
  {
    String output="";
  for(String str: map.keySet()){
    output+=str+" is related to ";
    for(String rels: map.get(str)){
     output+=rels+" "; 
    }
    output+= "\n";
  }
    return output;
  }


}

  
