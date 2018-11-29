//Global
int screen_width=500;
int screen_height=250;
//Global for paddle
float paddle_y=screen_height-10;
float paddle_x;
int paddle_w=10;
int paddle_h=3;

int countPassed=0;


boolean colHappened;
//Global for Obstacles
Obstacle[] obstacles;


void setup(){
  
  size(500,250);
  paddle_x=width/2;
  colHappened=false;
  obstacles=new Obstacle[3];
  getObstacles(3);
  
}

void draw(){
  background(155);
  fill(0);
  rectMode(CORNER);
  noStroke();
  rect(mouseX,paddle_y,paddle_w,paddle_h);

  for(Obstacle obstacle:obstacles){
    if((obstacle.positionX>=mouseX&&obstacle.positionX<=mouseX+paddle_w) && (obstacle.positionY>=screen_height-10-3&&obstacle.positionY<=screen_height)){
      youLose();
    }
    obstacle.move(2);
    if(obstacle.positionY>screen_height){
    countPassed++;
    }
  }
  
  if(countPassed==3){
  countPassed=0;
  getObstacles(3);
  }
  
  


 
}

void youLose(){

background(#F00C0C);
text("You lost!",width/2,height/2);
  noLoop();

colHappened=true;
}

void getObstacles(int amt){
for(int i=0;i<amt;i++){
  System.out.println(i);
  obstacles[i]=new Obstacle(int(random(screen_width)),0,5);

}
}



  
 
  
