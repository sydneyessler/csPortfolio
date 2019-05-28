import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
import java.io.FileNotFoundException;
Scanner file;
ArrayList <Person> arr=new ArrayList<Person>();
int size;

void setup(){
  try{
  file = new Scanner (new File("Desktop/Collections/personn/data/person.dat"));
  size = file.nextInt();
  file.nextLine();
  for(int i=0; i<size; i++)
  {
    arr.add(new Person(file.nextInt(),file.nextInt(),file.nextInt(),file.next()));
    //int y = file.nextInt();
    //int m = file.nextInt();
    //int d = file.nextInt();
    //String n = file.next();
    //Person obj = new Person(y,m,d,n);
    //arr.add(obj);
  }
  for(Person p: arr){
    println(p);
  }
  
  Collections.sort(arr);
  
  println("\n");
  for(Person p: arr){
    println(p);
  }
  
  }
  catch(FileNotFoundException e){
  e.printStackTrace();
  }
  catch (Exception ex){
    System.err.println("Error Reading File");
  }
  
}
