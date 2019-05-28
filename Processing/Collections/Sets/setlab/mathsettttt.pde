void setup(){
  MathSet ex1 = new MathSet("1 2 3 4 5", "4 5 6 7 8");
  println(ex1.toString());
  println("union - " + ex1.union());
  println("intersection - " + ex1.intersection());
  println("difference A-B - " + ex1.diffAminusB());
  println("difference B-A - " + ex1.diffBminusA());
  println("symmetric difference - " + ex1.symmDiff());
   println("\n");
  MathSet ex2 = new MathSet("10 11 12 13 14 15 16 17", "11 13 15 17 19 21 23");
  println(ex2.toString());
  println("union - " + ex2.union());
  println("intersection - " + ex2.intersection());
  println("difference A-B - " + ex2.diffAminusB());
  println("difference B-A - " + ex2.diffBminusA());
  println("symmetric difference - " + ex2.symmDiff());
  println("\n");
  MathSet ex3 = new MathSet("4 5 5 6 76 7 7 8 8 8 8 8", "23 3 4 3 5 3 53 5 46 46 4 6 5 3 4");
  println(ex3.toString());
  println("union - " + ex3.union());
  println("intersection - " + ex3.intersection());
  println("difference A-B - " + ex3.diffAminusB());
  println("difference B-A - " + ex3.diffBminusA());
  println("symmetric difference - " + ex3.symmDiff());
}
