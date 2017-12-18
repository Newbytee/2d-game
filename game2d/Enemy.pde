class Enemy {
 
  int x;
  int y;
  float speedX;
  float speedY;
  
  Enemy(int x, int y, float speedX, float speedY) {
   
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    
  }
  
  void spawn() {
   
    rect(x, y, 10, 10);
    
  }
  
  void move() {
   
    x -= speedX;
    y -= speedY;
    
    if (x <= 0 || y <= 0) {
     
      x = width;
      y = (Math.round(random(300, 380)));
      
    }
    
  }
  
}