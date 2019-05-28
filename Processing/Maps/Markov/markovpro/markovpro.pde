void setup() {
  MarkovChain mc=new MarkovChain();
  String [] str=loadStrings("Desktop/Maps/Markov/Data/Onefish.dat");
  String allText=join(str, " ");
  String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  for (String s : cleanText) {
    mc.generateText(s);
    println(mc.generateText(s));
    //println(mc.generateText2(2));
  }
}

interface Markov {
  void trainMap(String [] s);
  String generateText(String s);
}


import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain implements Markov {
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }

  void trainMap(String [] str) {
    for (int i =0; i<str.length-1; i++)
    {
      if (myMap.get(str[i])==null) {
        myMap.put(str[i], new ArrayList<String>());
      }
      myMap.get(str[i]).add(str[i+1]);
    }
  }
  String generateText(String str) {
    String s = "";
    int rand1 = 0;
    int rand2 = 0;
    if (myMap.containsKey(str)){
    rand1=getRandomIndex(str);
    rand2=getRandomIndex(str);
    s+=str+" " +myMap.get(str).get(rand1)+" ";
    s+=myMap.get(str).get(rand2);
    }
    return s;
  }


  //generates num grams...so 1 is one word followed by another
  String generateText2(int num) {
     int n = 0;
     String newString="";
     int randomindex = 0;
     while(n<num){
       int randomKey=(int)(Math.random()*myMap.keySet().size());
       List<String> indexes = new ArrayList<String>(myMap.keySet());
       String str = indexes.get(randomKey);
       randomindex = getRandomIndex(str);
       newString+=str+" "+ myMap.get(str).get(randomindex)+" ";
       n++;
     }
     return newString;
  }


  int getRandomIndex(String s) {
    int randomIndex=(int)(Math.random()*myMap.get(s).size());
    return randomIndex;
  }

  void printMap() {
    println(myMap);
  }
  public String toString() {
    return ""+wordList;
  }
}
