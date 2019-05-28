import java.util.Queue;
import java.util.Stack;
import java.util.PriorityQueue;
import java.util.LinkedList;

public class towerAssembler
{
  
  private PriorityQueue<Integer> pq = new PriorityQueue<Integer>();
  private Stack<Integer> s = new Stack<Integer>();
  
  
  public towerAssembler(int[] ar){
    if(ar.length==9){
      
    for(int i = 0; i<9; i++){
      pq.add(ar[i]);
    }
    }
  }
  
  public void makeTheStack(){
    
    while(!pq.isEmpty()){
      s.add(pq.poll());
    }
  
  }
  
  public Stack getStack(){
    makeTheStack();
    return s;
  }
  
  public String toString(){
    return getStack().toString();
  }
  
  
}
