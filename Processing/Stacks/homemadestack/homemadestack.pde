import java.util.ArrayList;

class IntStack{
  
 private ArrayList<Integer> ar;
 
 public IntStack(){
   ar = new ArrayList<Integer>();
 }
 
 public void push(int item){
   ar.add(item);
 }
 
 public int pop(){
   return ar.remove(ar.size()-1);
 }
 
 public boolean isEmpty(){
  if(ar.size()<1)
    return true;
  else
    return false;
 }
 
 public int peek(){
   if(ar.isEmpty())
     return -1;
   else
     return ar.get(ar.size()-1);
 }
 
 public String toString(){
   return ar.toString();
 }
 
 
}
