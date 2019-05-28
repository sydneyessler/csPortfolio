void setup(){
  SpanishToEnglish se = new SpanishToEnglish();
  
  try{
    Scanner scan = new Scanner(new File("Desktop/Maps/spantoeng/ste.dat"));
    int n = scan.nextInt();
    scan.nextLine();
    for(int i =0;i<n;i++)
    {
      String s =scan.nextLine();
      se.putEntry(s);
    }
    
    while(scan.hasNext())
    {
      String s = scan.next();
      print(se.translate(s)+" ");
    }
    
  }
  
  catch(Exception e){
    println(e);
  }
  
}
