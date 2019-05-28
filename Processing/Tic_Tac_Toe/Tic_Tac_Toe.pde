Box[][] b = new Box[3][3]; //sets up gameboard
board a = new board(b, 0); //new board object
void setup(){
size(500, 500);//sets up the screen, background is white
background(255);
a.drawBoard();//displays tic-tac-toe board on screen
for(int r = 0; r<3; r++)
 for(int c = 0; c<3; c++)      //sets up all 9 box objects
  b[r][c] = new Box(r,c);
}
boolean isOver = true; //boolean that keeps the game going or determines that its over
void draw(){
 
  
if(isOver){ 
if (mousePressed && isBetween(mouseX, 100,200))
{
        if (mousePressed && isBetween(mouseY, 100, 200))
          {
            if(!(b[0][0].GetisFull()))
                {
                     a.setTurns();
                     drawX(b[0][0]);
                     b[0][0].isPickedX();
                     if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                     Box zerozero = FindOpenO(b);
                     drawO(zerozero);
                     b[zerozero.getRow()][zerozero.getCol()].isPickedO();}
                     if(isOver && a.getTurns() > 2)
                     {   
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                     if(isOver)
                    oneSpaceLeft(b); 
            }
     }
    
       else if (mousePressed && isBetween(mouseY, 200, 300))
              {
               if(!(b[1][0].GetisFull()))
              {
                a.setTurns();
              drawX(b[1][0]);
              b[1][0].isPickedX();
              if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                     Box onezero = FindOpenO(b);
                     drawO(onezero);
                     b[onezero.getRow()][onezero.getCol()].isPickedO();}
                     if(isOver && a.getTurns() > 2)
                     { 
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                     if(isOver)
                     oneSpaceLeft(b);
               }
                }
            else if (mousePressed && isBetween(mouseY, 300, 400))
              {
                 if(!(b[2][0].GetisFull()))
                  {
                    a.setTurns();
                    drawX(b[2][0]);
                    b[2][0].isPickedX();
                    if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                    Box twozero = FindOpenO(b);
                     drawO(twozero);
                     b[twozero.getRow()][twozero.getCol()].isPickedO();}
                     if(isOver && a.getTurns() > 2)
                     {
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                    if(isOver)
                    oneSpaceLeft(b);
                    }
              }
}
else if (mousePressed && isBetween(mouseX, 200,300)){
  if (mousePressed && isBetween(mouseY, 100, 200))//2
  {
  if(!(b[0][1].GetisFull()))
    {
      a.setTurns();
      drawX(b[0][1]);
      b[0][1].isPickedX();
      if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                     Box zeroone = FindOpenO(b);
                     drawO(zeroone);
                     b[zeroone.getRow()][zeroone.getCol()].isPickedO();}
                     if(isOver && a.getTurns() > 2)
                     { 
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                     if(isOver)
           oneSpaceLeft(b);          
    }
  }
  else if (mousePressed && isBetween(mouseY, 200, 300))//5
  {
  if(!(b[1][1].GetisFull()))
    {
      a.setTurns();
      drawX(b[1][1]);
      b[1][1].isPickedX();
      if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                      Box oneone = FindOpenO(b);
                      drawO(oneone);
                      b[oneone.getRow()][oneone.getCol()].isPickedO();}
      if(isOver && a.getTurns() > 2)
                     {
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                     if(isOver)
                   oneSpaceLeft(b);
    }
  }
  else if (mousePressed && isBetween(mouseY, 300, 400)) //8
  {
   if(!(b[2][1].GetisFull()))
    {
      a.setTurns();
      drawX(b[2][1]);
      b[2][1].isPickedX();
      if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                    Box twoone = FindOpenO(b);
                    drawO(twoone);
                    b[twoone.getRow()][twoone.getCol()].isPickedO(); }
      if(isOver && a.getTurns() > 2)
                     {
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                     if(isOver)
                      oneSpaceLeft(b);
    }
  }
}
else if (mousePressed && isBetween(mouseX, 300,400)){
  if (mousePressed && isBetween(mouseY, 100, 200)) //3
  {
     if(!(b[0][2].GetisFull()))
    {
      a.setTurns();
      drawX(b[0][2]);
      b[0][2].isPickedX();
      if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                          Box zerotwo = FindOpenO(b);
                          drawO(zerotwo);
                          b[zerotwo.getRow()][zerotwo.getCol()].isPickedO();}
      if(isOver && a.getTurns() > 2)
                     { 
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                     if(isOver)
                      oneSpaceLeft(b);
    }
  }
  else if (mousePressed && isBetween(mouseY, 200, 300)) //6
  {
     if(!(b[1][2].GetisFull()))
    {
      a.setTurns();
      drawX(b[1][2]);
      b[1][2].isPickedX();
     if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                      Box onetwo = FindOpenO(b);
                      drawO(onetwo);
                      b[onetwo.getRow()][onetwo.getCol()].isPickedO();}
      if(isOver && a.getTurns() > 2)
                     {
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                     if(isOver)
                      oneSpaceLeft(b);
    }
  }
  else if (mousePressed && isBetween(mouseY, 300, 400)) //9
  {
    if(!(b[2][2].GetisFull()))
    {
      a.setTurns();
      drawX(b[2][2]);
      b[2][2].isPickedX();
      if(a.getTurns() > 2)
                     {
                         if(checkXWin(b)){
                             winner();
                             isOver=false; }
                     }
                     if(isOver){
                      Box twotwo = FindOpenO(b);
                      drawO(twotwo );
                      b[twotwo.getRow()][twotwo.getCol()].isPickedO();}
      if(isOver && a.getTurns() > 2)
                     {
                         if(checkOWin(b)){
                             loser();
                             isOver=false;}
                     }
                     if(isOver)
                       oneSpaceLeft(b);
      }
    }
  }
}
}
