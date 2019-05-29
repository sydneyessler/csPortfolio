import java.util.Queue;
import java.util.LinkedList;
import static java.lang.System.*;

class BinarySearchTree {
  private TreeNode root;

  public BinarySearchTree() {
    root = null;
  }
  public void makeEmpty() {
    root = null;
  }
  public void add(Comparable val) {
    root = add(val, root);
  }
  private TreeNode add(Comparable val, TreeNode tree) {
    if (tree == null)
      tree = new TreeNode(val);

    Comparable treeValue = tree.getValue();
    int dirTest = val.compareTo(treeValue);    

    if (dirTest < 0)
      tree.setLeft(add(val, tree.getLeft()));
    else if (dirTest > 0)
      tree.setRight(add(val, tree.getRight()));

    return tree;
  }

  public void inOrder() {
    inOrder(root);
    System.out.println("\n\n");
  }

  private void inOrder(TreeNode tree) {
    if (tree != null) {
      inOrder(tree.getLeft());
      System.out.print(tree.getValue() + " ");
      inOrder(tree.getRight());
    }
  }
  ///////////////////////////////////////////////////////////DoThese
  public void preOrder() {
    preOrder(root);
    System.out.println("\n\n");
  }

   public void preOrder(TreeNode tree) {
    if (tree!=null) {
      preOrder(tree.getLeft());
      preOrder(tree.getRight());
      println(tree.getValue()+" ");
    }
  }

   public void postOrder(TreeNode tree) {
    if (tree!=null) {
      postOrder(tree.getLeft());
      postOrder(tree.getRight());
      println(tree.getValue()+" ");
    }
  }

  public void postOrder() {
    postOrder(root);
    System.out.println("\n\n");
  }
   public void revOrder(TreeNode tree) {
    if (tree!=null) {
      revOrder(tree.getRight());
      println(tree.getValue()+" ");
      revOrder(tree.getLeft());
    }
  }
   public void revOrder() {
    revOrder(root);
    System.out.println("\n\n");
  }
   public boolean isLeaf(TreeNode tree) {
    if (tree.getLeft()==null&&tree.getRight()==null)
      return true;
    return false;
  }
  public int getNumLevels() {
    return getNumLevels(root);
  }

  public int getNumLevels(TreeNode tree) {
    if (tree==null)
      return 0;
    else if (getNumLevels(tree.getLeft())>getNumLevels(tree.getRight()))
      return 1+getNumLevels(tree.getLeft());
    else
      return 1+getNumLevels(tree.getRight());
  }
  public void levelOrder() {
    LevelOrder(root);
    System.out.println("\n\n");
  }
  public void LevelOrder(TreeNode tree) {
    if (tree==null) 
      return;

    Queue<TreeNode> level = new LinkedList<TreeNode>();
    level.add(tree);

    while (!level.isEmpty()) {
      TreeNode node = level.remove();
     // level.add(node);
      print(node.getValue()+" ");
      if (node.getLeft()!=null)
        level.add(node.getLeft());
      if (node.getRight()!=null)
        level.add(node.getRight());
    }
  }

  public String toString() {
    return toString(root);
  }
  private String toString(TreeNode tree) {
    
     if (tree==null) {
      return"";
    } else
      return " "+ toString(tree.getLeft())+" " + tree.getValue() + " " + toString(tree.getRight());
  }
    
    

}
