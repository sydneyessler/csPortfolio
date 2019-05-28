PImage BW4;
PImage BW6;
PImage BW11;
PImage BW12;
PImage BW13;
PImage BM21;
PImage BM17;
PImage r;
PImage ri;
PImage t1;
PImage t2;
PImage t25;
PImage t3;
PImage t4;
PImage t45;
PImage tt;

int scene=0;
BachelorList prog1;
  BacheloretteList prog;
void setup(){
  background (0); 
  size(650,600);
  t1= loadImage("t1.jpg");
  t1.resize(100, 100);
  t2= loadImage("t2.jpg");
  t2.resize(100, 100);
  t25= loadImage("t2.5.jpg");
  t25.resize(100, 100);
  t3= loadImage("t3.jpg");
  t3.resize(100, 100);
  t4= loadImage("t4.jpg");
  t4.resize(100, 100);
  t45= loadImage("t4.5.jpg");
  t45.resize(100, 100);
  tt= loadImage("tt.png");
  tt.resize(299, 155);
  r= loadImage("Rose.png");
  r.resize(155, 165);
  ri= loadImage("Ring.png");
  ri.resize(155, 155);
  BW4 = loadImage("4.jpg");
  BW4.resize(120, 155);
  BW6 = loadImage("6.jpg");
  BW6.resize(120, 155);
  BW11 = loadImage("11.jpg");
  BW11.resize(120, 155);
  BW12 = loadImage("12.jpg");
  BW12.resize(120, 155);
  BW13 = loadImage("13.jpg");
  BW13.resize(120, 155);
  BM21 = loadImage("B21.jpg");
  BM21.resize(120, 155);
  BM17 = loadImage("B17.jpg");
  BM17.resize(120, 155);
  
  
   prog = new BacheloretteList("C:\\Users\\Shayla\\Desktop\\Bachelor\\maps_project\\bachelorette.txt");
  // out.println(prog);
  prog1 = new BachelorList("C:\\Users\\Shayla\\Desktop\\Bachelor\\maps_project\\bachelor.txt");
   out.println(prog1);
   out.println(prog.r1Wcalc());
   out.println(prog.EFData());
   out.println(prog1.EFData());
   //background(0);
   
   

}
Trash t = new Trash();
Rose ro = new Rose();
void draw(){
 background (0);
 
 if(scene==0){
   
 textSize(14);
 fill(255,0,0);
 text("   "+((float)prog1.r1Wcalc()*100) +  "% of Contestants" + "\n who won the First Impression" + "\n           and Final Rose" ,15,500);
 text(100*(float)prog.r1Wcalc() + "% of Contestants" + "\n who won the First Impression" + "\n and Final Rose",300,500);
 text("Women from The Bachelor", 20, 90);
 text("Men from The Bachelorette", 325, 90);
  textSize(18);
  fill(255);
 text("Contestants Who Won the First Impression Rose and the Final Rose", 30,40);
 //text();
 ro.show();
 ro.move();
 image(BW4,200,100);
 image(BW6,350,100);
 image(BW11,500,100);
 image(BW12,350,300);
 image(BW13,200,300);
 image(BM21,20,100);
 image(BM17,20,300);
 image(ri,475,300);
 }
 if(scene==1){
   fill(255);
  t.show();
  t.move();
 image(t1,270,400);
 image(t2,210,290);
 image(t25,330,290);
 image(t3,270,180);
 image(t4,210,70);
 image(t45,330,70);
// tt.resize(299, 155);
 image(tt,190,476);
//  tt.resize(50, 75);
 //image(ri,475,300);
 textSize(40);
 text("TRASH SCALE", 190, 40);
 textSize(12);
 text("(Contestants Kicked off by Producers)", 210, 60);
 textSize(20);
 fill(255,0,0);
 text("LEAST", 30, 115);
 text("MOST", 30, 450);
 text("Why?", 520, 60);
 fill(255,0,0);
 stroke(200);
 fill(255,0,0);
 stroke(255,0,0);
 line(58, 125, 58, 425);
 triangle(38, 410, 58, 425, 78, 410);
 //fill(255);
 textSize(14);
 text("Still in love with ex", 465, 115);
 text("Physical relations with producer", 415, 235);
 text("Another girlfriend back home", 440, 355);
 text("UNACCEPTABLE COMMENT", 440, 445);
 }
 
 if(mousePressed)
 scene=1;
 
 //image(r,mouseX,mouseY);

}