import java.util.Scanner;
import static java.lang.System.*;
import java.util.Stack;

Stack<String> t = new Stack<String>();
Stack<String> b = new Stack<String>();

void setup() {

  try {
    Scanner scan = new Scanner(new File("Desktop/Processing/Stacks/Data/cicus.dat"));


    int c = scan.nextInt();

    for (int i =0; i<c; i++) {
      String st = scan.next();
      if (st.length()%2==0)
        println(st);
      else
        b.push(st);
    }




    //System.out.println("\n");
  }



  catch(Exception e) {
    println(e);
  }

  while (!b.empty()) {
    println(b.pop());
  }
}
