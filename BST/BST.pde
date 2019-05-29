

void setup() {
  BinarySearchTree tree = new BinarySearchTree();

  tree.add(90);
  tree.add(100);
  tree.add(80);
  tree.add(70);
  tree.add(85);
  tree.add(98);
  tree.add(120);

  out.println("IN ORDER");
  tree.inOrder();

  out.println("PRE ORDER");
  tree.preOrder();

  out.println("POST ORDER");
  tree.postOrder();

  out.println("REVERSE ORDER");
  tree.revOrder();

  println("\nNumber of levels is " + tree.getNumLevels());
  
  println("\nTree as a string  " + tree.toString());

  out.println("\n\nlevel order traversal");
  tree.levelOrder();
}

public interface Treeable{
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
