import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;

public class PalinList
{
  private Queue<String> queue = new LinkedList<String>();
  private Stack<String> stack = new Stack<String>();
  private ArrayList<String> arrlist = new ArrayList<String>();
  
  public PalinList()
  {
    setList("");
  }

  public PalinList(String list)
  {
    String[] ar = list.split(" ");
    
    for(int i=0;i<ar.length;i++){
      queue.add(ar[i]);
      stack.push(ar[i]);
      arrlist.add(ar[i]);
    }
    
  }

  public void setList(String list)
  {
    String[] ar = list.split(" ");
    
    for(int i=0;i<ar.length;i++){
      queue.add(ar[i]);
      stack.push(ar[i]);
    }
  }
  

  public boolean isPalin()
  {
    while(!queue.isEmpty()){
      if(!(queue.remove().equals(stack.pop())))
        return false;
    }
    
    return true;
  }


  public String toString()
  {
    if(isPalin()){
      return arrlist + " is a palinlist";
    }
    else 
      return arrlist + " is not a palinlist";
  }
}
