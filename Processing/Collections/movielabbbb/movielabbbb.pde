import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
import java.io.File;
import java.util.ListIterator;
import java.util.regex.Matcher;
import java.util.Iterator;
import java.util.regex.Pattern;
import java.util.Arrays;
 MovieList list = new MovieList();
 double a, b, c, d;
void setup(){
 size(500, 600);//sets up the screen, background is white
  background(0);
  textSize(20);
  fill(255);
  text("Frequency and Average Score of Words", 10, 60);

    
  try{
    Scanner file = new Scanner(new File("Desktop/Collections/movielabbbb/Data/movieReviews.dat"));
    //ArrayList<Movie> movieL = new ArrayList<Movie>();

 while(file.hasNext()){
   list.loadMovies(file.nextLine());
 }
 list.sortByCount();
 

  //Squares/Text:
  fill(255, 0, 0);
  rect(100, 100, 105, 105, 7);
  fill(0, 255, 0);
  rect(290, 100, 105, 105, 7);
  fill(0, 0, 255);
  rect(100, 250, 105, 105, 7);
  fill(255, 255, 0);
  rect(290, 250, 105, 105, 7);
  fill(0);
  textSize(15);
  text("excellent", 120, 155);
  text("good", 320, 155);
  text("fine", 137, 310);
  text("horrible", 310, 310);
    
 
 a = list.getAverageWordScore("excellent");
 b=list.getAverageWordScore("good");
 c=list.getAverageWordScore("fine");
 d=list.getAverageWordScore("horrible");
 
 
 
  }catch(Exception e){
    println(e);
  }
}


  void draw(){
  
  fill(255);
  textSize(15);
      
  if (mousePressed && isBetween(mouseX, 100, 205) && isBetween(mouseY, 100, 205))
  {
      textSize(15);
      text("excellent "+ a, 80, 400);
      
      fill(0);
      rect(0, 425, 500, 150);
  }
  
  if (mousePressed && isBetween(mouseX, 290, 395) && isBetween(mouseY, 100, 205))
  {     
      textSize(15);
      text("good "+b, 110, 450);
      
      fill(0);
      rect(0, 380, 500, 50);
      rect(0, 475, 520, 150);
  }

  if (mousePressed && isBetween(mouseX, 100, 205) && isBetween(mouseY, 250, 355))
  {
      textSize(15);
      text("fine "+c, 150, 500);
      
      fill(0);
      rect(0, 360, 500, 120);
      rect(0, 525, 520, 150);
  }
  
  
  if (mousePressed && isBetween(mouseX, 290, 395) && isBetween(mouseY, 250, 355))
  {
      textSize(15);
      text("horrible "+d, 130, 550);
      
      fill(0);
      rect(0,360,500,165);
  }
  
}
  
