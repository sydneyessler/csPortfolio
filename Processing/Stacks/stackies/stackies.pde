import java.util.Scanner;
import java.util.Stack;


void setup() {
  try {
    Scanner scan = new Scanner(new File("Desktop/Stacks/Data/stackies.dat"));
    Stack<String> s1 = new Stack<String>();

    String[] ar1 = scan.nextLine().split(" ");

    for (int i =0; i<ar1.length; i++) {
      s1.push(ar1[i]);
    }
    println(s1);
    println("\n");
    println("popping all items from the stack");
    while (!s1.empty()) {
      print(s1.pop()+ " ");
    }

  }

  catch(Exception e) {
    println(e);
  }
}
