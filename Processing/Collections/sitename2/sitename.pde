import static java.lang.System.*;

class SiteName implements Comparable<SiteName>
{
  //add instance variables
  public String name;
  public String last3;
  
  public SiteName(){
    
  }

  //add a constructor
  public SiteName(String sn) {
    String[]arr=sn.split("\\.");
    this.name = arr[0];
    this.last3 = arr[1];
  }


  //add a compareTo
  public int compareTo(SiteName s) {
    if(this.last3.compareTo(s.last3)>0){
      return 1;
    }
    if(this.last3.compareTo(s.last3)<0){
      return -1;
    }
    
    return this.name.compareTo(s.name);
  }

  //add a toString
  public String toString() { 
    return name+"."+last3;

  }
}
