public class Function {
  /*
  * Autor:      Marc Mentha
  * Class:      Functions we use a lot
  * Date:       02.10.2016
  */ 
  
  public void displayMenuHeader() {
    
    // shows the header  and the footer of the menus
    
    //Start header
    
    // We wan't strokes
    noStroke();
    
    // Big blue Circle
    fill(0, 0, 255);
    ellipse(150, 100, 180, 180);
    
    // Little yellow Circle
    fill(255, 255, 0);
    ellipse(330, 80, 35, 35); 
    
    // Text
    fill (255, 0, 0);
    textSize(80);
    text("Deadly Ball", 190, 105);
    
    // Red Triangle on the left side
    triangle(120, 170, 120, 100, 250, 100);
    
    // Titlestroke
    rect(160, 100, 500, 10);
    
    // Green mediumsized Circle
    fill(0, 255, 0);
    ellipse(630, 40, 60, 60);
    // end header
    
    // Start footer
    fill(255, 0, 255);
    textSize(15);
    text("Press 'Enter' to select", 328, 730);
    text("Move Cursor with Arrow UP/ DOWN", 270, 760);
    textSize(10);
    fill(255,0 ,0);
    text("Copyright by Marc Mentha", 10, 790);
    // end footer
  }
}