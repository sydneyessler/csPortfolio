void setup(){
  
  PQTester one = new PQTester("one two three four five six seven");
  println("toString() - " + one.toString());
  println("getMin() - " + one.getMin());
  println("getNaturalOrder() - " + one.getNaturalOrder());
  println();
  PQTester two = new PQTester("1 2 3 4 5 one two three four five");
  println("toString() - " + two.toString());
  println("getMin() - " + two.getMin());
  println("getNaturalOrder() - " + two.getNaturalOrder());
  println();
  PQTester three = new PQTester("a p h j e f m c i d k l g n o b");
  println("toString() - " + three.toString());
  println("getMin() - " + three.getMin());
  println("getNaturalOrder() - " + three.getNaturalOrder());

}
