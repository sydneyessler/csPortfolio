import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

void setup(){
  
  IteratorRemover a = new IteratorRemover("a b c a b c a", "a");
 
  println(a);
  a.remove();
  println(a);
  
  IteratorRemover b = new IteratorRemover("a b c d e f g h i j x x x x", "x");
 
  println(b);
  b.remove();
  println(b);
  
  IteratorRemover c = new IteratorRemover("1 2 3 4 5 6 a b c a b c", "b");
 
  println(c);
  c.remove();
  println(c);
  
  
}
