
public class Part implements Comparable<Part>
{
  private String make, model;
  private int year;
  private String theRest="";

  public Part(String line){
    
    String[] list = line.split(" ");
    year = Integer.parseInt(list[list.length-1]);
    model = list[list.length-2];
    make = list[list.length-3];
    
    for(int i=0; i<list.length-3;i++){
      theRest= theRest + " " +list[i];
    }
    
  }

  //have to have compareTo if implements Comparable
  public int compareTo( Part other )
  {
    if(this.make.compareTo(other.make)!=0)
      return this.make.compareTo(other.make);
    if(this.model.compareTo(other.model)!=0)
      return this.model.compareTo(other.model);
    if(this.theRest.compareTo(other.theRest)!=0)
      return this.theRest.compareTo(other.theRest);  
    if(this.year > other.year)
       return 1;
    if(this.year < other.year)
       return -1;
    else return 0;
      
      
    
      
  }

  public String toString()
  {
    return make+ " "+model+ " "+year+ ""+theRest;
  }
}
