import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

class BacheloretteList
{
  private TreeMap<String, ArrayList<BB>> bachWMap;

  public BacheloretteList()
  {
    bachWMap = new TreeMap<String, ArrayList<BB>>();
  }

  public BacheloretteList(String fileName)
  {
    this();
    try
    {
      Scanner scan = new Scanner(new File("Desktop/maps_project/data/mapsdata.dat"));
    
    
      while (scan.hasNext()) {
        String s=scan.nextLine();
        BB p=new BB(s);
        if(bachWMap.get(p.getSeas())==null)
        {
          bachWMap.put(p.getSeas(), new ArrayList<BB>());
        }
        bachWMap.get(p.getSeas()).add(p);
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
    for (String p : bachWMap.keySet()) {
      output+=p+ " - "+bachWMap.get(p) + "\n";
    }

    return output;
    
    
    
  }
  
   public double r1Wcalc(){
    int countR1=0;
    int countT = 0;
    for(String u: bachWMap.keySet()){
      for(int i=0; i<bachWMap.get(u).size();i++){
  if(bachWMap.get(u).get(i).getR1() && bachWMap.get(u).get(i).getW()){
       countR1++;
       }
       if(bachWMap.get(u).get(i).getW())
        countT++;
     }
     
      
      
    }
   return ((double)countR1/countT); 
    
    
  }
  public int EFData(){
    int countB=0;

    for(String u: bachWMap.keySet()){
      for(int i=0; i<bachWMap.get(u).size();i++){
  if(bachWMap.get(u).get(i).getEF()){
       countB++;
       }
       
     }
  
  
  }
  return countB;
  }
  
  
  public ArrayList<String> EFDataList() {
    ArrayList<String> trashbbs = new ArrayList<String>();
    
    for (String u : bachWMap.keySet()) {
      for (int i=0; i<bachWMap.get(u).size(); i++) {
        if (bachWMap.get(u).get(i).getEF()) {
          trashbbs.add(bachWMap.get(u).get(i).getName());
        }
      }
    }
    return trashbbs;
  }
}
