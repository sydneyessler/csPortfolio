# csPortfolio

***

Hi! Welcome to my portfolio. 

Here I have include all of my work from my year in Advanced Computer Science (ACS) in addition to some of my Advanced Placement computer science projects. This year in ACS, we have focuse on learning about different types of data structures including stacks, queues, sets, and trees. We have also learned about Big O operation time, parsing data, iterators, and other computer science concepts. The projects I completed in the course display creativity and ability to use a variety of different data structures to complete tasks.

***

## Overall Reflection

Of all of my portfolio projects, the two that are my favorite have been Tic-Tac-Toe and Flesch Readability. These two projects challenged me to use new concepts to create programs that allow user interaction. Incorporating ideas and computers science principles that I had just learned helped me to gain confidence in my abilities and make user interfaces that are interesting and useful. Many of the less "flashy" projects that I completed this past year were more helpful in my own journey of becoming proficient with different data structures, especially those that were created from scratch such as the binary tree. These types of projects helped me to furhter my understanding of how these data structures work and how they can be implemented in problem solving. To see the code for my two favorite projects and some of the labs that helped me learn about data structures, see the links below:

<details open>
<summary>Favorite Projects</summary>
<br>
 
[TicTacImages](https://github.com/sydneyessler/csPortfolio/tree/master/TicTacImages)

[TicTacToe](https://github.com/sydneyessler/csPortfolio/tree/master/Tic_Tac_Toe)

[Flesch](https://github.com/sydneyessler/StringParser.git)

[FleschImage](https://github.com/sydneyessler/csPortfolio/blob/master/Screen%20Shot%202019-05-28%20at%209.50.05%20PM.png)

</details>

<details open>
<summary>Data Structures Labs</summary>
<br>
 
 [Collections](https://github.com/sydneyessler/csPortfolio/tree/master/Processing/Collections)
 
 [Queues](https://github.com/sydneyessler/csPortfolio/tree/master/Processing/QUEUESSSS)
 
 [Stacks](https://github.com/sydneyessler/csPortfolio/tree/master/Processing/Stacks)
 
 [Binary Search Tree](https://github.com/sydneyessler/csPortfolio/tree/master/BST)
 
 [Linked List](https://github.com/sydneyessler/csPortfolio/tree/master/linklist)


</details>


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
Here is the rest of the code for that project:
[code](https://github.com/sydneyessler/csPortfolio/tree/master/project_lab)

***

## Hurdles 

The most difficult challenge I worked through this trimester was retrieving data from a map. This challenge reared its ugly head during a group project that analyzed data from the *Bachelor* and *Bachellorette*. While working in a group, all of us were working through iterating through and parcing data, but we were unable to determine how to complete a calculation that would determine the percent of contestants that won both the first impression rose and the final rose. With a lot of trial and error and writing it out on whiteboards, we were able to create a method that would complete ths calculation. Here is our completed solution:

```java
public double r1Wcalc(){
    int countR1=0;
    int countT = 0;
    for(String u: bachWMap.keySet()){
      for(int i=0; i<bachWMap.get(u).size();i++){
  if(bachWMap.get(u).get(i).getR1() && bachWMap.get(u).get(i).getW()){
       countR1++;
       } 
  if(bachWMap.get(u).get(i).getW())
        countT++;
     }
    }
   return ((double)countR1/countT);
  
  }
```
***

## Describe the incremental and iterative development process of your included code, focusing on two distinct points in the development process. Describe the difficulties and/ or opportunities you encountered and how they were resolved or incorporated. In your description clearly indicate whether the development described was collaborative or independent. At least one of these points must refer to independent program development.

One of the defining moments of my computer science career occured on the third to last day of school while completing my group's final projects. On this day, I truly suffered and pushed through. Just when I though the grip of senior slide was finally getting the best of me, a wave of motivation swept through my body screaming at me to persist! This wave caused for two major breakthroughs in the project - one independent and one collaborative. On my own, I worked to learn and complete the process of switching between slides based on clicks. This took me a signifigant amount of thinking and problem solving on my own as I have not complete a project in which the slides switch. To do this, I used the mousePressed operation and a method I wrote sophomore year called isBetween. I used these operations to determine when it was time for certain scenes to appear, and we utilized a class that consisted soley of methods that produced the visual for each scene. Inserted below is the final result of what was contained in mousePressed:

```java
void mousePressed() {
  if(on!=true){
    if(scen==1&&isBetween(mouseX,100,200)&&isBetween(mouseY,225,300)){
      scen=2;
      sc.scene2();
    }
    if(scen==1&&isBetween(mouseX,300,400)&&isBetween(mouseY,225,300)){
      scen=3;
      sc.scene3();
    }
    if(scen==2&&isBetween(mouseX,100,200)&&isBetween(mouseY,300,375)){
      scen=4;
      sc.scene4();
    }
    if(scen==2&&isBetween(mouseX,300,400)&&isBetween(mouseY,300,375)){
      scen=5;
      sc.scene5();
    }if(scen==3&&isBetween(mouseX,100,200)&&isBetween(mouseY,300,375)){
      scen=6;
      sc.scene6();
    }if(scen==3&&isBetween(mouseX,300,400)&&isBetween(mouseY,300,375)){
     scen=7;
      sc.scene7();
    } 
    
 }
```

Revising and perfecting this method was also an individual challenge as I had to determine the coordinates that would match each button. After working on this piece of the project, my group and I tried to get the map we were building connected to the visual. We were near the edge of resorting to typing in the questions and responces as strings rather than actually grabbing them from the tree we had created. After almost an entire of frustration and on the verge of giving up, we looked back in the initial setup of the tree and discovered that we had reinstantiated two leaves twice and two leaves zero times. That simple mistake was fixed, and our project was officially completed just in time. Here is the final result of that project:

[final project](https://github.com/sydneyessler/csPortfolio/tree/master/project_lab)


