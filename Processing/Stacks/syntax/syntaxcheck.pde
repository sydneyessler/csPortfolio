void setup(){
  
  SyntaxChecker one = new SyntaxChecker("(abc(*def)");
   println(one.toString());
   println();
   SyntaxChecker two = new SyntaxChecker("[{}]");
   println(two.toString());
    println();
   SyntaxChecker three = new SyntaxChecker("[");
   println(three.toString());
    println();
   SyntaxChecker four = new SyntaxChecker("[{<()>}]");
   println(four.toString());
    println();
   SyntaxChecker five = new SyntaxChecker("{<html[value=4]*(12)>{$x}}");
   println(five.toString());
    println();
   SyntaxChecker six = new SyntaxChecker("[one]<two>{three}(four)");
   println(six.toString());
    println();
   SyntaxChecker seven = new SyntaxChecker("((car(cdr(a)(b)))");
  println(seven.toString());
    println();
   SyntaxChecker eight = new SyntaxChecker("car(cdr(a)(b))");
   println(eight.toString());
   
   
  
}
