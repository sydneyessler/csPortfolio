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
import java.util.Iterator;

public class MovieList
{
  private ArrayList<Movie> movieList;
  private int count;
  
  public MovieList(){
    movieList = new ArrayList<Movie>();
  }
    
  public int getCount(){
     return count;
    }
    
  public void loadMovies(String m){
    Scanner scan = new Scanner(m);
    int num = scan.nextInt();
    String s = scan.nextLine();
    movieList.add(new Movie(num, s));
  }
  
  public double getAverageScore(){
    double avg = 0;
    int c=0;
    for(Movie m: movieList)
    {
      avg=avg+m.getRating();
      c++;
    }
    return avg/c;
    
  }
  
  
  
  public double getAverageWordScore(String s){
    
    double timesoccured = 0;
    double scores = 0;
    for(Movie m: movieList)
    {
      if(m.getReview().indexOf(s)>-1)
      {
        scores = scores +m.getRating();
        timesoccured++;
      }
    }
    
    return scores/timesoccured; 
  }
  
  
  public void sortByCount(){
    Collections.sort(movieList);
  }
  
  public String getOverallComment(){
    double s = (int)getAverageScore();
    if(s>3.5)
      return "This movie is excellent";
    else if(s>3)
      return "This movie is very good";
    else if(s>2)
      return "This movie is okay";
    else if(s>1)
      return "This movie is bad";
    else
      return "This movie is HORRIBLE";
  }
  
  public void sortMoviesByCount(){
    Collections.sort(movieList);
  }
  
  public String toString(){
    Iterator<Movie> here = movieList.iterator();
    String ret = "";
    while(here.hasNext()){
      ret = ret+ here.next() + "\n";
    }
   
    return ret;
      
  }
  
}


    //while(here.hasNext()){
    //  String re = here.next().toString();
    //  Movie reviewww = new Movie(here.next());
    //  if (reviewww.getReview().indexOf(s)>-1){
    //    println(s);
    //    println(re);
    //    timesoccured++;
    //    scores = scores + reviewww.getRating();
    //  }
