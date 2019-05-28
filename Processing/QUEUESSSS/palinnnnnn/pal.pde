void setup(){
  
  PalinList one = new PalinList("one two three two one");
  println(one);
  PalinList two = new PalinList("1 2 3 4 5 one two three four five");
  println(two);
  PalinList three = new PalinList("a b c d e f g x y z g f h");
  println(three);
  PalinList four = new PalinList("racecar is racecar");
  println(four);
  PalinList five = new PalinList("1 2 3 a b c c b a 3 2 1");
  println(five);
  PalinList six = new PalinList("chicken is a chicken");
  println(six);
  
}
