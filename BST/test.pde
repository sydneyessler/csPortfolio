//import static java.lang.System.*;
//import java.util.LinkedList;

//class BinarySearchTree() {

//  private TreeNode root;

//  public void BinarySearchTree() {
//    root = null;
//  }

//  public void add(Comparable val) {
//    root=add(val, root);
//  }

//  public TreeNode add(Comparable val, TreeNode tree) {
//    if (tree==null)
//      tree = new TreeNode(val);

//    Comparable treeValue = tree.getValue();
//    int dirTest = val.compareTo(treeValue);

//    if (dirTest<=0)
//      tree.setLeft(add(val, tree.getLeft()));
//    else
//      tree.setRight(add(val, tree.getRight()));

//    return tree;
//  }

//  public void inOrder() {
//    inOrder(root);
//    System.out.println("\n\n");
//  }

//  private void inOrder(TreeNode tree) {
//    if (tree!=null) {
//      inOrder(tree.getLeft());
//      println(tree.getValue() +" ");
//      inOrder(tree.getRight());
//    }
//  }

//  public void preOrder(TreeNode tree) {
//    if (tree!=null) {
//      preOrder(tree.getLeft());
//      preOrder(tree.getRight());
//      println(tree.getValue()+" ");
//    }
//  }

//  public void postOrder(TreeNode tree) {
//    if (tree!=null) {
//      postOrder(tree.getLeft());
//      postOrder(tree.getRight());
//      println(tree.getValue()+" ");
//    }
//  }

//  public void revOrder(TreeNode tree) {
//    if (tree!=null) {
//      revOrder(tree.getRight());
//      println(tree.getValue()+" ");
//      revOrder(tree.getLeft());
//    }
//  }

//  public int getNumLevels() {
//    return getNumLevels(root);
//  }

//  public int getNumLevels(TreeNode tree) {
//    if (tree==null)
//      return 0;
//    else if (getNumLevels(tree.getLeft())>getNumLevels(tree.getRight()))
//      return 1+getNumLevels(tree.getLeft());
//    else
//      return 1+getNumLevels(tree.getRight());
//  }

//  public boolean isLeaf(TreeNode tree) {
//    if (tree.getLeft()==null&&tree.getRight()==null)
//      return true;
//    return false;
//  }



//  public String toString() {
   
//}
