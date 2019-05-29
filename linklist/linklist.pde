public class ListFunHouseTwo{
  
  private ListNode theList;
  
  public ListFunHouseTwo(){
   theList = null;
  }
  
  public void add(Comparable data){
  theList = new ListNode(data, theList); 
  }
  
  public int nodeCount(){
    int count = 0;
    ListNode temp = theList;
    while(temp!=null){
     count++;
     temp=temp.getNext();
    }
    return count; 
  }
  
  public void doubleFirst(){
   theList = new ListNode(theList.getValue(), theList); 
  }
  
  public void doubleLast(){
    ListNode temp = theList;
    while(temp.getNext()!=null){
      temp = temp.getNext();
    }
    ListNode add=new ListNode(temp.getValue(), null);
    temp.setNext(add);
      
      
  }
  
  public void skipEveryOther(){
    ListNode temp = theList;
    while(temp!=null){
      temp.setNext(temp.getNext().getNext());
      temp = temp.getNext();
    }
  }
  
  public void setXthNode(int x, Comparable value){
    int count = 1;
    ListNode temp = theList;
    
    while(temp!=null){
      if(x==count){
        temp.setValue(value);
        count =1;
      }
      else{
      count++;
      }
      temp = temp.getNext();
    }
  }
  
  public void removeXthNode(int x){
    ListNode current = theList;
    ListNode previous = theList;
    int c =1;
    while(current!=null){
      if(x==c){
        previous.setNext(current.getNext());
        c=1;
      }
      else
        c++;
        previous = current;
        current = current.getNext();
    }
  }
  
  public String toString(){
    String output="";
    ListNode temp = theList;
    while(temp!=null){
      output+=temp.getValue()+" ";
      temp = temp.getNext();
    }
    return output;
  }
  
  
}
