import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class SpanishToEnglish
{
  private Map <String, String> pairs;
  
  public SpanishToEnglish()
  {
    pairs = new TreeMap<String,String>();
  }
  
  public void putEntry(String Entry)
  {
    String[] list = Entry.split(" ");
    String span = list[0];
    String eng = list[1];
    pairs.put(span, eng);
  }
  
  public String translate(String sent)
  {
    Scanner scan = new Scanner(sent);
    String output = "";
    while(scan.hasNext())
    {
      String s = scan.next();
      output += pairs.get(s);
    }
    return output;
  }
  
  public String toString()
  {
   return pairs.toString().replaceAll("\\,","\n"); 
  }
  
}
