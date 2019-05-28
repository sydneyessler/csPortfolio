import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

public class PQTester
{
  private PriorityQueue<String> pq = new PriorityQueue<String>();
  private String[] st;
  public PQTester()
  {
  }

  public PQTester(String list)
  {
    st = list.split(" ");
    for(int i = 0; i<st.length; i++){
      pq.add(st[i]);
    }
  }

  public void setPQ(String list)
  {
    st = list.split(" ");
    for(int i = 0; i<st.length; i++){
      pq.add(st[i]);
    }
  }
  
  public Object getMin()
  {
    return pq.peek();
  }
  
  public String getNaturalOrder()
  {
    String output="";
    
    while(!pq.isEmpty())
      output+=" " +pq.poll();
      
    return output;    
  }

  public String toString(){
    return pq.toString();
  }
}
