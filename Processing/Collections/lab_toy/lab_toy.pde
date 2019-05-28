import static java.lang.System.*;

void setup(){
  
  //Toy t = new Toy("sorry", 1);
  //Toy t2 = new Toy("gi joe", 5);
  
  ToyStore ts=new ToyStore();
  ts.loadToys("sorry bat sorry sorry sorry train train teddy teddy ball ball");
  
  //println(t);
  //println(t2);
  println(ts);
  
  
}
