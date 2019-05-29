public class squaries{
  
  private towerAssembler towass;
  
  squaries(towerAssembler ta){
    towass=ta;
  }
  
  public void prettyPicture(){
    
    textSize(15);
    int y = 450;
    int fontCount = 465;
    Stack<Integer> s = towass.getStack();
    while(!s.isEmpty()){
      int f = s.pop();
      fill(255);
      text(f, 20, fontCount);
      fontCount-=50;
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      rect(300-(50*f/2), y, 50*f, 25);
      y-=50;
    }
    fill(255);
    text("Average = "+ towass.getMean(),220, 500);
  }
  
  
  
}
