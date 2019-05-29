# csPortfolio

***

Hi! Welcome to my portfolio. 

Here I have include all of my work from my year in Advanced Computer Science (ACS) in addition to some of my Advanced Placement computer science projects. This year in ACS, we have focuse on learning about different types of data structures including stacks, queues, sets, and trees. We have also learned about Big O operation time, parsing data, iterators, and other computer science concepts. The projects I completed in the course display creativity and ability to use a variety of different data structures to complete tasks.

***

## Overall Reflection 

Of all of my portfolio projects, the two that are my favorite have been Tic-Tac-Toe and Flesch Readability. These two projects challenged me to use new concepts to create programs that allow user interaction. Incorporating ideas and computers science principles that I had just learned helped me to gain confidence in my abilities and make user interfaces that are interesting and useful. Many of the less "flashy" projects that I completed this past year were more helpful in my own journey of becoming proficient with different data structures, especially those that were created from scratch such as the binary tree. These types of projects helped me to furhter my understanding of how these data structures work and how they can be implemented in problem solving. To see the code for my two favorite projects and some of the labs that helped me learn about data structures, see the links below:

[I'm an inline-style link](https://github.com/sydneyessler/csPortfolio/tree/master/TicTacImages)

[TicTacToe](https://github.com/sydneyessler/csPortfolio/tree/master/Tic_Tac_Toe)

[Flesch] (https://github.com/sydneyessler/StringParser.git)

***  

## Source of pride in Programming Development

 My biggest source of pride in my programming development was maintaining the motivation and perseverance to struggle through issues on my own. This year I tried as hard as I could to indentify and fix my own errors before resorting to google, peers, or Dr. R for help. Although I still had to ask for help, the fact that I at least tried to figure out issues on my own was a big step towards independence in my programming development. One project that I worked through completely independently was an open-ended sets lab. The most difficult part of this lab was understanding what the end goal of the lab was and deciding how to come up with a solution to the ideas presented. By reviewing my notes and taking an in-depth look at the project guidlines, I was able to decide where to start. I first made a class that would simply create and order the towers, then went on to make the visualization. By splitting these two tasks up, I ensured that the actual computation was accurate and ran as I had intended. After making the program that would assemble "towers" of random lengths, I created methods that sorted them by using a priority queue, displayed them from smallest to largest on the screen, and computed an average of the lengths. Sample images of the final product can be found in the StackImages folder, and the method used to create the display can be seen here:
 
```java
 public void prettyPicture(){
    
    textSize(15);
    int y = 450;
    int fontCount = 465;
    Stack<Integer> s = towass.getStack();
    while(!s.isEmpty()){
      int f = s.pop();
      fill(255);
      text(f, 20, fontCount);
      fontCount-=50;
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      rect(300-(50*f/2), y, 50*f, 25);
      y-=50;
    }
    fill(255);
    text("Average = "+ towass.getMean(),220, 500);
  }
  
```

***


## Hurdles 

The most difficult challenge I worked through was printing out a map. This challenge reared its ugly head during a group project that analyzed data from the *Bachelor* and *Bachellorette*.


***

## Describe the incremental and iterative development process of your included code, focusing on two distinct points in the development process. Describe the difficulties and/ or opportunities you encountered and how they were resolved or incorporated. In your description clearly indicate whether the development described was collaborative or independent. At least one of these points must refer to independent program development.
