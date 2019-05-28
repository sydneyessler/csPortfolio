import java.util.TreeSet;
import java.util.Arrays;
import java.util.ArrayList;
import static java.lang.System.*;
import java.util.Set;

public class UniqueDupes{
  
  public Set<String> getUniques(String input){
    Set<String> uniques = new TreeSet<String>();
    String s[] = input.split(" ");
    
    for(String st:s)
    {
      uniques.add(st);
    }
    return uniques;
  }
  
  public Set<String> getDupes(String input){
    Set<String> uniques = new TreeSet<String>();
    Set<String> dupes = new TreeSet<String>();
    String s[] = input.split(" ");
    
    for(String st:s)
    {
      if (uniques.add(st)==false){
        dupes.add(st);
      }
    }
    return dupes;
  }
  
}
