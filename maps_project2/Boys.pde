import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

class BachelorList
{
  private TreeMap<String, ArrayList<BB>> MenMap;

  public BachelorList()
  {
    MenMap = new TreeMap<String, ArrayList<BB>>();
  }

  public BachelorList(String fileName)
  {
    this();
    try
    {
      Scanner scan = new Scanner(new File("C:\\Users\\Shayla\\Desktop\\Bachelor\\maps_project\\bachelor.txt"));
    
    
      while (scan.hasNext()) {
        String s=scan.nextLine();
        BB p=new BB(s);
        if(MenMap.get(p.getSeas())==null)
        {
          MenMap.put(p.getSeas(), new ArrayList<BB>());
        }
        MenMap.get(p.getSeas()).add(p);
      }
     //out.println(bachWMap); 
    }
        
       
    catch( IOException e )  //Most specific exceptions must be listed 1st
    {
      out.println(e);
    }
    catch( RuntimeException e )
    {
      out.println(e);
    }
    catch( Exception e )
    {
      out.println(e);
    }
    
    finally
    {
      //no code needed here
    }
 
  }
  public String toString() {
     String output="";
    for (String p : MenMap.keySet()) {
      output+=p+ " - "+MenMap.get(p) + "\n";
    }

    return output;
    
    
    
  }
  public double r1Wcalc(){
    int countR1=0;
    int countT = 0;
    for(String u: MenMap.keySet()){
      for(int i=0; i<MenMap.get(u).size();i++){
  if(MenMap.get(u).get(i).getR1() && MenMap.get(u).get(i).getW()){
       countR1++;
       }
       if(MenMap.get(u).get(i).getW())
        countT++;
     }
     
      
      
    }
   return ((double)countR1/countT); 
    
    
  }
  public int EFData(){
    int countB=0;

    for(String u: MenMap.keySet()){
      for(int i=0; i<MenMap.get(u).size();i++){
  if(MenMap.get(u).get(i).getEF()){
       countB++;
       }
       
     }
    
    
  }
  return countB;
  
  }
  
}