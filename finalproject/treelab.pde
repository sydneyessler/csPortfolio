import java.util.Queue;
import java.util.LinkedList;
import static java.lang.System.*;




public interface Treeable{
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
