import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.lang.System.*;


class MathSet<E>
{
  private Set<E> one;
  private Set<E> two;
  
  public MathSet()
  {
  }
  
  public MathSet(String O, String T)
  {
    one = new TreeSet<E>();
    two = new TreeSet<E>();
    
    for(String s: O.split(" "))
    one.add((E)s);
    
    for(String s2: T.split(" "))
    two.add((E)s2);
  }
  
  public Set<E> union()
  {
    Set<E> un = new TreeSet<E>();
    un.addAll(one);
    un.addAll(two);
    return un;
  }
  
  public Set<E> intersection()
  {
    Set<E> is = new TreeSet<E>();
    is.addAll(one);
    is.retainAll(two);
    return is;
  }
  
  public Set<E> diffAminusB()
  {
    Set<E> aminusb = new TreeSet<E>();
    aminusb.addAll(one);
    aminusb.removeAll(two);
    return aminusb;
  }
  
  public Set<E> diffBminusA()
  {
    Set<E> bminusa = new TreeSet<E>();
    bminusa.addAll(two);
    bminusa.removeAll(one);
    return bminusa;
    
  }
  
  public Set<E> symmDiff()
  {
    Set<E> symmDiff = union();
    symmDiff.removeAll(intersection());
    return symmDiff;
    
  }
  
  public String toString()
  {
    return "Set one " + one +  "\n" +"Set two " + two + "\n";
  }
  
  
  
  
  
}
