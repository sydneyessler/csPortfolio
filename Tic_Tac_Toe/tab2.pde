public class board
{
  Box[][] b;
  int turns;
 
  public board(Box[][] boxes, int x)
  {
  b = boxes;
  turns = x;
  }
 
  public void drawBoard()
  {
  
  fill(int(random(255)),int(random(255)),int(random(255)));
textSize(22);
text("Welcome to Tic-Tac-Toe!!", 110, 40);
  fill(0);
line(200, 100, 200, 400);//verticle
line(300, 100, 300, 400);
line(100, 200, 400, 200);//horizontal
line(100, 300, 400, 300);
  }
  
  public void setTurns()
  {
    turns++;   
  }
 
  public int getTurns(){
    return turns;  
    
  }
 
}




public class Box
{
int r;
int c;
boolean isFull;
boolean isX;

public Box(int row, int col)
{
r = row;
c = col;
isFull = false;
}

 
 public int getRow()
{
  return r;
}
public int getCol()
{
  return c;
}

public void isPickedX()
{
  isFull=true;
  isX = true;
}
public void isPickedO()
{
  isFull = true;
  isX = false;
  
}

boolean getX()
{
  return isX;
}

boolean GetisFull()
{
  return isFull;
}


}





public void drawX(Box a){
  int r = a.getRow();
  int c = a.getCol();
  strokeWeight(3);
  stroke(255, 0, 0);
  line(125+100*c, 125+100*r, 175+100*c, 175+100*r);
  line(125+100*c, 175+100*r, 175+100*c, 125+100*r);  
}

public void drawO(Box a)
{
  int r = a.getRow();
  int c = a.getCol();
  fill(255);
  stroke(0);
  strokeWeight(3);
  ellipse(150 + 100*c, 150 + 100*r, 50, 50);
}







Box getRandomBox(Box [][] b){
  
  int r = int(random(0, 3));
  int c = int(random(0,3));
  
  return b[r][c];
  
}

Box FindOpenO(Box[][] b)
{
 Box x = getRandomBox(b);
 while(x.GetisFull())
   {
     x = getRandomBox(b);
   }
   return x;
}




boolean isBetween(int x, int low, int high)
{
 boolean between = false;
 
 for(int a = low; a<=high; a++)
   {
   if(a==x)
     between = true;
   } 
 
 return between;
}

public void oneSpaceLeft(Box[][] b){

  int counter = 0;
  for(int r = 0; r<3; r++)
    for(int c =0; c<3;c++){
      if(b[r][c].GetisFull())
          counter++;
}
   if(counter==8){
    for(int r = 0; r<3; r++){
      for(int c =0; c<3;c++){
        if(!(b[r][c].GetisFull())){
          drawX(b[r][c]);
          b[r][c].isPickedX();}
      }}
      if(checkXWin(b)){
          winner();
          isOver = false;}
      else{
         isOver = false;
          tie();}
      
      
      }}



  
  




public boolean checkXWin(Box [][] b)
{
  if(b[0][0].getX() && b[0][1].getX() && b[0][2].getX())
     return true;
  else if(b[1][0].getX() && b[1][1].getX() && b[1][2].getX())  
    return true;
  else if(b[2][0].getX() && b[2][1].getX() && b[2][2].getX())
     return true;
  else if(b[0][0].getX() && b[1][0].getX() && b[2][0].getX())
     return true; 
  else if(b[0][1].getX() && b[1][1].getX() && b[2][1].getX())
     return true;   
  else if(b[0][2].getX() && b[1][2].getX() && b[2][2].getX())
     return true; 
  else if(b[0][0].getX() && b[1][1].getX() && b[2][2].getX())
     return true;  
  else if(b[0][2].getX() && b[1][1].getX() && b[2][0].getX())
     return true;      
  else
      return false;
}

public boolean checkOWin(Box [][] b)
{
  if(b[0][0].GetisFull() && !(b[0][0].getX()) && b[0][1].GetisFull() && !(b[0][1].getX()) && b[0][2].GetisFull() && !(b[0][2].getX()))
     return true;
  else if(b[1][0].GetisFull() && !(b[1][0].getX()) && b[1][1].GetisFull() && !(b[1][1].getX()) && b[1][2].GetisFull() && !(b[1][2].getX()))  
    return true;
  else if(b[2][0].GetisFull() && !(b[2][0].getX()) && b[2][1].GetisFull() && !(b[2][1].getX()) && b[2][2].GetisFull() && !(b[2][2].getX()))
     return true;
  else if(b[0][0].GetisFull() && !(b[0][0].getX()) && b[1][0].GetisFull() && !(b[1][0].getX()) && b[2][0].GetisFull() && !(b[2][0].getX()))
     return true; 
  else if(b[0][1].GetisFull() && !(b[0][1].getX()) && b[1][1].GetisFull() && !(b[1][1].getX()) && b[2][1].GetisFull() && !(b[2][1].getX()))
     return true;   
  else if(b[0][2].GetisFull() && !(b[0][2].getX()) && b[1][2].GetisFull() && !(b[1][2].getX()) && b[2][2].GetisFull() && !(b[2][2].getX()))
     return true; 
  else if(b[0][0].GetisFull() && !(b[0][0].getX()) && b[1][1].GetisFull() && !(b[1][1].getX()) && b[2][2].GetisFull() && !(b[2][2].getX()))
     return true;  
  else if(b[0][2].GetisFull() && !(b[0][2].getX())&& b[1][1].GetisFull() && !(b[1][1].getX()) && b[2][0].GetisFull() && !(b[2][0].getX()))
     return true;      
  else
      return false;
      
}

public void winner(){
isOver = false;
fill(int(random(255)),int(random(255)),int(random(255)));
textSize(40);
text("WINNER", 170, 450);

}


public void loser(){
  isOver = false;
fill(int(random(255)),int(random(255)),int(random(255)));
textSize(40);
text("LOSER", 190, 450);

}

public void tie(){
  isOver = false;
  fill(int(random(255)),int(random(255)),int(random(255)));
textSize(40);
text("TIE", 220, 450);
}
