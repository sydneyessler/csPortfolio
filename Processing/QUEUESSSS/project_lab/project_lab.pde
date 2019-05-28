

void setup(){
  
  int[] intar1;
  intar1 = new int[9];
  for(int i =0; i<intar1.length;i++){
    intar1[i] = (int)(Math.random()*10)+1;
  }
  towerAssembler one = new towerAssembler(intar1);
  println(one);
  
  int[] intar2;
  intar2 = new int[9];
  for(int i =0; i<intar2.length;i++){
    intar2[i] = (int)(Math.random()*10)+1;
  }
  towerAssembler two = new towerAssembler(intar2);
  println(two);
  
  int[] intar3;
  intar3 = new int[9];
  for(int i =0; i<intar3.length;i++){
    intar3[i] = (int)(Math.random()*10)+1;
  }
  towerAssembler three = new towerAssembler(intar3);
  println(three);
  
  
  
}
