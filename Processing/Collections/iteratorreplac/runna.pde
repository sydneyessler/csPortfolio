import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;
import static java.lang.System.*;

void setup(){
   IteratorReplacer rep1 = new IteratorReplacer("a b c a b a", "a", "+");
   IteratorReplacer rep2 = new IteratorReplacer("a b c d e f g h i j x x x x", "x", "7");
   IteratorReplacer rep3 = new IteratorReplacer("1 2 3 4 5 6 a b c a b c", "b", "#");

  println(rep1);
  println(rep2);
  println(rep3);
}
