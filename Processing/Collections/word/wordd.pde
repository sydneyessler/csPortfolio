import static java.lang.System.*;

public class Word implements Comparable<Word>
{
  private String word;

  public Word( String s )
  {
    word=s;
  }

  public int compareTo( Word rhs )
  {    
    int gotlength =(rhs.toString()).length();
    int wordlength = word.length();
    if(gotlength==wordlength){
      return 0;}
    else if(gotlength>=wordlength){
      return -1;}
    else{
      return 1;}
  }

  public String toString()
  {
    return word;
  }
}
