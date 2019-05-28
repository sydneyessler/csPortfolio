import static java.lang.System.*;

public class Person implements Comparable<Person>
{
  private int myYear;
  private int myMonth;
  private int myDay;
  private String myName;

  public Person(int y, int m, int d, String n)
  {
    myYear = y;
    myMonth = m;
    myDay = d;
    myName = n;
  }

  public int compareTo( Person other )
  {
     if (other.getYear()>myYear){
       return 1;
     }
     if (other.getYear()<myYear){
       return -1;
     }
     if (other.getMonth()>myMonth){
       return 1;
     }
     if (other.getMonth()<myMonth){
       return -1;
     }
     if (other.getDay()>myDay){
       return 1;
     }
     if (other.getDay()<myDay){
       return -1;
     }
     else 
     return -1*(myName.compareTo(other.getName()));
  }
  
  public int getYear(){
    return myYear;
  }
  public int getMonth(){
    return myMonth;
  }
  
  public int getDay(){
    return myDay;
  }
  
  public String getName(){
    return myName;
  }

  public String toString( )
  {
     return myName;
  }
}
