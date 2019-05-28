void setup(){
  
  UniqueDupes ud = new UniqueDupes();
  
  println("Original List: a b c d e f g h a b c d e f g h i j k");
  println("Uniques: " +ud.getUniques("a b c d e f g h a b c d e f g h i j k"));
  println("Dupes: " + ud.getDupes("a b c d e f g h a b c d e f g h i j k"));
  println("\n");
  println("Original List: one two three one two three six seven one two");
  println("Uniques: " +ud.getUniques("one two three one two three six seven one two"));
  println("Dupes: " + ud.getDupes("one two three one two three six seven one two"));  
  println("\n");
  println("Original List:  1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6");
  println("Uniques: " +ud.getUniques("1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6"));
  println("Dupes: " + ud.getDupes("1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6"));



}
