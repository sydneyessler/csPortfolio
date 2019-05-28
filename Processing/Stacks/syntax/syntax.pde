import java.util.Stack;
import static java.lang.System.*;
import java.lang.Character;
char o;

public class SyntaxChecker
{
  private String exp;
  private Stack<Character> symbols = new Stack<Character>();

  public SyntaxChecker()
  {
  }

  public SyntaxChecker(String s)
  {
    exp=s;
    setExpression(s);
  }

  public void setExpression(String s)
  {
    
    String[] stringss=s.split("");
    int len = stringss.length;
    
    for (int i =0; i<len; i++) {
      char ch = s.charAt(i);
      if (stringss[i].equals("(")||stringss[i].equals("{")||stringss[i].equals("<")||stringss[i].equals("[")){
        symbols.push(ch);
        } 
      else if (stringss[i].equals(")")||stringss[i].equals("}")||stringss[i].equals(">")||stringss[i].equals("]")){
        if (!symbols.empty()){
            symbols.pop();
            } 
        else{
            checkExpression();
            }
        }
  }
}

public boolean checkExpression()
{
  if(symbols.empty()){
    return true;
  } else{
    return false;
  }
}

public String stringMaker(){
  String strin = exp;
  if(checkExpression()){
  strin= strin + " is correct";
  }
  else{
    strin = strin+ " is incorrect";
  }
  return strin;
}

public String toString() {
 return stringMaker();
}
}
