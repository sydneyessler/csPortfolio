import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  
  Relatives r = new Relatives();
  
  try{
    Scanner scan = new Scanner(new File("Desktop/Maps/relatives/relatives.dat"));
    int num = scan.nextInt();
    scan.nextLine();
    for(int i = 0; i<num; i++){
      String s = scan.nextLine();
      r.setPersonRelative(s);
    }
    println(r);
  }catch(Exception e){
    println(e);
  }
 
  
}
