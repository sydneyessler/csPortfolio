# csPortfolio

Hi! Welcome to my portfolio. 

Here I have include all of my work from my year in Advanced Computer Science (ACS) in addition to some of my Advanced Placement computer science projects. This year in ACS, we have focuse on learning about different types of data structures including stacks, queues, sets, and trees. We have also learned about Big O operation time, parsing data, iterators, and other computer science concepts. The projects I completed in the course display creativity and ability to use a variety of different data structures to complete tasks.

***

## Overall Reflection on Portfolio Projects

Of all of my portfolio projects, the two that are my favorite have been Tic-Tac-Toe and Flesch Readability. These two projects challenged me to use new concepts to create programs that allow user interaction. Incorporating ideas and computers science principles that I had just learned helped me to gain confidence in my abilities and make user interfaces that are interesting and useful. Many of the less "flashy" projects that I completed this past year were more helpful in my own journey of becoming proficient with different data structures, especially those that were created from scratch such as the binary tree. These types of projects helped me to furhter my understanding of how these data structures work and how they can be implemented in problem solving. 

## Source of pride in Programming Development

 My biggest source of pride in my programming development was maintaining the motivation and perseverance to struggle through issues on my own. This year I tried as hard as I could to indentify and fix my own errors before resorting to google, peers, or Dr. R for help. Although I still had to ask for help, the fact that I at least tried to figure out issues on my own was a big step towards independence in my programming development. One project that I worked through completely independently was an open-ended sets lab. I made a program that would assemble "towers" of random lengths, sort them by using a priority queue, display them from smallest to largest on the screen, and compute an average of the lengths. Sample images of the final product can be found in the StackImages folder, and the method used to create the display can be seen here:
 
```
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



## Identify them, write about why they are accomplishments, how you did it and what you learned.  Be sure to submit a code snippet along with your writing on the readMe file in your repo.

## Identify the most significant hurdle you encountered last trimester.  Write about what it was and how it was resolved.

## Once you are ready to submit your writing and code examples, study markdown (language used on github to format text).

## Describe the incremental and iterative development process of your included code, focusing on two distinct points in the development process. Describe the difficulties and/ or opportunities you encountered and how they were resolved or incorporated. In your description clearly indicate whether the development described was collaborative or independent. At least one of these points must refer to independent program development.
