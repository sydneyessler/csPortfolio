 
public class Scenes {

 //TreeNode current2=current.getLeft();
//String  soo=(String)current.getValue();


  public Scenes() {
  }

  void scene1() {
    fill(255);
    textSize(15);
    text("Which Bachelor/Bachelorette TV Show should you be On?", 50, 50);
    textSize(15);
    text((current.getValue() + ""), 140, 150);
     fill(255,0,0);
    rect(100, 225, 100, 75);
    rect(300, 225, 100, 75);
    fill(0);
    textSize(50);
    text("YES", 108, 232, 200, 200);
    text("NO", 313, 232, 200, 200);
  }
  void scene2() {
    fill(255);
    textSize(25);
    text((current.getLeft().getValue() + ""), 100, 180);
    fill(255,0,0);
    rect(100, 325, 100, 75);
    rect(300, 325, 100, 75);
    fill(0);
    textSize(50);
    text("YES", 108, 332, 200, 200);
    text("NO", 313, 332, 200, 200);
  }
  
  void scene3() {
    fill(255);
    textSize(25);
    text((current.getRight().getValue() + ""), 60, 180);
    fill(255,0,0);
    rect(100, 325, 100, 75);
    rect(300, 325, 100, 75);
    fill(0);
    textSize(50);
    text("YES", 108, 332, 200, 200);
    text("NO", 313, 332, 200, 200);
  }
  
  void scene4() {
    fill(255);
    textSize(25);
    text((current.getLeft().getLeft().getValue() + ""), 100, 180);
    fill(255);
  }
  
  void scene5() {
    fill(255);
    textSize(25);
    text((current.getLeft().getRight().getValue() + ""), 100, 180);
    fill(255);
  }
  
  void scene6() {
    fill(255);
    textSize(25);
    text((current.getRight().getLeft().getValue() + ""), 100, 180);
    fill(255);
  }
  
  void scene7() {
    fill(255);
    textSize(25);
    text(current.getRight().getRight().getValue() + "", 100, 180);
    fill(255);
  }
}
