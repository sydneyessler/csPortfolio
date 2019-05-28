SnowFlake []sf;
float moonx = 20;
float speed=.5;
int t = 10;
int x =20;
//heights of lights on trees
int h1 = 300; //bottom row                 
int h2 = 310; // secong from bottom row
int h3 = 280; // third from bottom row
int h4 = 270; // top row
//height of lights on house
int h5 = 194; //top row of lights
int h6 = 200; //bottom row of lights
//snowman 
int s = 150; //variable for snowman circle's x-values
void setup(){
  size(400, 400);//sets up the screen, background is white
  sf = new SnowFlake[100];
  for(int i=0; i<sf.length;i++)
  {
    sf[i] = new SnowFlake();
  }
}
void draw(){
  background(0);
//SNOW ON BOTTOM:
fill(255, 255, 255);
rect(0, 340, 400, 100);

//HOUSE:
fill(64, 19, 22);//brown
rect(124,190,150,150);//house
fill(238, 255, 0);//yellow
strokeWeight(1);//change back to normal thickness of line
rect(175, 250,50, 90);//door
fill(0,0,0);//black
ellipse(215, 295, t, t);//doorknob

//TREES WITH LIGHTS
fill(6, 87, 24);//green
triangle(20, 320, 70, 260, 120, 320);//bottom of left tree
triangle(30, 300, 70, 250, 110, 300);//middle of left tree
triangle(40, 280, 70, 240, 100, 280);//top of left tree
triangle(280, 320,330, 260, 375, 320); //bottom of right tree
triangle(290, 300, 330, 250, 365, 300);//middle of right tree
triangle(300, 280, 328, 240, 357, 280);//top of right tree

//TRUNKS
fill(87, 21, 49);//brown
rect(55, 320, 30, 20);//left trunk
rect(315, 320, 30, 20);//right trunk

fill(237, 12, 12);//red
textSize(30);//bigger text
text("Merry Christmas!", 86, 380);//message to viewer

if(mousePressed){
    for(int i = 0; i<17; i+=2)//green dots along left
        {
        fill(94, 153, 118);//green
        ellipse(10, t+i*x , t, t);//circles
        }
    
    for(int i = 1; i<17; i+=2)//red dots along right
        {
        fill(227, 56, 22);//red
        ellipse(10, t+i*x , t, t);//circes
        }

    for(int i = 0; i<17; i+=2) //red dots on left
        {
        fill(230, 69, 69);//red
        ellipse(390, t+i*x, t, t);//circles
        }

    for(int i = 1; i<17; i+=2)//green dots on right
        {
        fill(94, 153, 118);//green
        ellipse(390, t+i*x, t, t);//circles
        }

    for(int i = 1; i<19; i+=2)//red dots on top
        {
        fill(252, 8, 8);//red
        ellipse(t+(i*x), 10, t, t);//circles
        }

for(int i = 2; i<19; i+=2)//green dots on top
        {
        fill(94, 153, 118);//green
        ellipse(t+i*x, 10, t, t);//circles
        }
}
//SNOWMAN:
fill(255, 255, 255);//white
ellipse(s, 320, 40, 40); //bottom of snowman
ellipse(s, 300, 32, 32); //middle of snowman
ellipse(s, 280, 25, 25); //top of snowman
fill(0,0,0);//black
ellipse(146, 277, 2, 2);//eye
ellipse(154, 277, 2, 2);//eye
fill(255, 145, 0);//orange
triangle(149, 280 ,149,285 ,156, 283);//carrot nose
fill(0,0,0);//black
ellipse(s, 297, 4,4);//top button 
ellipse(s, 304, 4,4);//middle button
ellipse(s, 311, 4,4);//bottom button
rect(137, 265, 25, 5);//bottom of hat
rect(141, 253, 18, 18);//top of hat
stroke(128, 89, 89);//brown lines
line(120, 285, 135,  300);//left arm
line(165, 300, 178, 285);//right arm

//FALLING SNOW

    stroke(0, 0, 0);//back to black outlines
    fill(158, 158, 141);//white for moon
    moonx = moonx+speed;
    ellipse(moonx, 100, 50, 50);//moon
    if(moonx >375){
       speed = -0.5; }
    if(moonx<25){            //animation 
       speed = 0.5;}
       
   fill(255, 0, 0);//red
    triangle(100,200,200,100, 300, 200);//roof of house
fill(15, 186, 189);//blue
ellipse(200,160,40,40);//circle window
fill(0,0,0);//black
stroke(15);
line(182,160, 216, 160);//horizontal window line on circle
line(199,142, 199,177);//verticle window line on circle
stroke(1);

fill(random(255), random(255), random(255));
//ellipse(100, h6, t, t);
//ellipse(115, h5, t, t);
//ellipse(130, h6, t, t);
//ellipse(145, h5, t, t);
//ellipse(160, h6, t, t);
//ellipse(175, h5, t, t);
//ellipse(190, h6, t, t);    //house lights
//ellipse(205, h5, t, t);
//ellipse(220, h6, t, t);
//ellipse(235, h5, t, t);
//ellipse(250, h6, t, t);
//ellipse(265, h5, t, t);
//ellipse(280, h6, t, t);
//ellipse(293, h5, t, t);

//House Lights:

for(int i=0; i<7; i++)
{
 ellipse(100+(i*30),h6,t,t);
}

for(int i=0; i<7; i++)
{
  ellipse(115+(i*30),h5,t,t);
}
//flashing random lights on left tree

ellipse(40, h2, t,t);     
ellipse(55, h1, t, t);
ellipse(70, h2, t, t);
ellipse(85, h1, t, t);
ellipse(100, h2, t, t);     //Lights on left tree
ellipse(48, h3, t, t);
ellipse(60, h4, t, t);
ellipse(72, h3, t, t);
ellipse(84, h4, t, t); //flashing random lights on right tree
ellipse(299, h2, t,t);    
ellipse(314, h1, t, t);
ellipse(329, h2, t, t);
ellipse(344, h1, t, t);
ellipse(359, h2, t, t);        //Lights on right tree
ellipse(310, h3, t, t);
ellipse(322, h4, t, t);
ellipse(334, h3, t, t);
ellipse(344, h4, t, t);
       
 for(int i =0; i<sf.length; i++)
  {
    sf[i].move();
    sf[i].show();
  }
    
}
