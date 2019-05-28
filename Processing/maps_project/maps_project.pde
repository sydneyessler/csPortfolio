
public class BB 
{
  String name; 
  boolean R1, W, EF;
  String season;
  
  
  public BB(String line){
    String[] person= line.split(",");
    
    season = person[1];
    name = person[2];
    
    if(line.contains("R1"))
    R1=true;
    else
    R1=false;
    if(line.contains("W"))
    W=true;
    else
    W=false;
    
   // for(int i = 0;i<person.length;i++){
     // out.println(person[i]);
    if(line.contains(",EF,"))
      EF = true;
    else
      EF = false;
    
  }
  
  public String getName(){
    return name;
  }
    public boolean getR1(){
    
    // out.println(R1); 
    return R1;
    
  }
  
   public boolean getW(){
    // out.println(W);
    return W;
    
  }
  public boolean getEF(){
    // out.println(EF);
    return EF;
    
  }
    
 
  
  public String getSeas(){
    
    return season;
    
  }
  
  public Boolean wonBoth(){
    if(R1&&W)
      return true;
    else 
      return false;
    
  }
  
 
  public String toString()
  {
    return season + " " + name + " " + R1 + " " + W;

  }
}
