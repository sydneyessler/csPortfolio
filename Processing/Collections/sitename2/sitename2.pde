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


void setup(){
  try{
    Scanner file = new Scanner(new File("Desktop/Collections/sitename2/Data/siteName.dat"));
    SiteName [] sites = new SiteName[file.nextInt()];
    int i = 0;
 
 while(file.hasNext()){
   file.nextLine();
   sites[i] =new SiteName(file.next());
   i++;
 }
 
  Arrays.sort(sites);
  
  for(SiteName s: sites){
    println(s);
  }
 
  }catch(Exception e){
    println(e);
  }
  
  
}
