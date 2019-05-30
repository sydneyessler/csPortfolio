public class BinarySearchTree{
  
  private TreeNode root;
  private TreeNode current;
  
  public BinarySearchTree(){
    root=null;
  }
  
  TreeNode buildTree(){
     
    root = new TreeNode("Do you fall in love quickly?");
    //level one
    root.setLeft(new TreeNode("Do you like to stir the pot?"));
    root.setRight(new TreeNode("What if they're Instagram famous?"));
    //level two
    root.getLeft().setRight(new TreeNode("Bachelor" ));
    root.getRight().setLeft(new TreeNode("Bachelorette" ));
    root.getLeft().setLeft(new TreeNode("Bachelor in Paradise" ));
    root.getRight().setRight(new TreeNode("Don't even watch the show"));
    ////level three left sub tree
    // root.getLeft().getLeft().setLeft(new TreeNode(" " ));
    // root.getLeft().getLeft().setRight(new TreeNode(" " ));
    // root.getLeft().getRight().setLeft(new TreeNode(" " ));
    // root.getLeft().getRight().setRight(new TreeNode(" " ));
    // // level three right sub tree
    // root.getRight().getRight().setRight(new TreeNode(" "));
    // root.getRight().getRight().setLeft(new TreeNode(" "));
    // root.getRight().getLeft().setLeft(new TreeNode(" "));
    // root.getRight().getLeft().setRight(new TreeNode(" "));
     
     
     
     
     
     current = root;
     return current;
  }
  
  TreeNode returnTree(){
    current= root;
    return root;
  }
  
  private void inOrder(){
    inOrder(root);
  }
  
  public void inOrder(TreeNode t){
    if(t!=null){
      inOrder(t.getLeft());
      System.out.println(t.getValue());
      inOrder(t.getRight());
    }  
  }
  
  
}
