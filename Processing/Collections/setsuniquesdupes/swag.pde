void setup(){
  
  UniqueDupes ud = new UniqueDupes();
  
  println(ud.getUniques("a b c d e f g h a b c d e f g h i j k"));
  println(ud.getDupes("a b c d e f g h a b c d e f g h i j k"));
}
