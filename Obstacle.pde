class Obstacle{
  int positionX;
  int positionY;
  int size;
  
  
  Obstacle(int posX,int posY,int s){
  positionX=posX;
  positionY=posY;
  size=s;
  }
void move(int speed){
  this.positionY+=speed;
  this.display();
}
  
  void display(){
  noStroke();
  fill(255);
  rectMode(CORNER);
  rect(positionX,positionY,size,size);
  //while(positionY<=screen_height+3){
  //  positionY+=speed;
  //  if(positionY==paddle_y-paddle_w && positionX==paddle_x){
  //  colHappened=true;
  //  break;
  //  }
  //}
  }
}
