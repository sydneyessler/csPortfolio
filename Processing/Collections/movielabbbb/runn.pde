import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Arrays;

public class Movie implements Comparable<Movie>{ 
  
  private int rating;
  private String review;
  
  public Movie (int r, String rev)
  {
    rating = r;
    review = rev;
  }
  
  public Movie(Movie m){
    rating = m.getRating();
    review = m.getReview();
  }
  
  public int getRating(){
   return rating; 
  }
  
  public String getReview(){
   return review; 
  }
  
  public int compareTo(Movie m){
    if (this.getRating() > m.getRating())
      return 1;
    if (this.getRating() < m.getRating())
      return -1;
    else
      return 0;
  }
  
  
  
  public String toString(){
    return rating + " " + review;
  }
  
}


boolean isBetween(int x, int low, int high){
  boolean between = false;

  for (int a = low; a<=high; a++){
    if (a==x)
      between = true;
  } 

  return between;
}
