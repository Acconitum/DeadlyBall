public class GameObject {

  /*
   * Autor:      Marc Mentha
   * Class:      Every Gameobject extends from this Class/ Defaultcalss for Cursors
   * Date:       05.10.2016
   */

  // Create the Vectorclass
  Position position = new Position();

  // Create a Vector with 2 floats
  private class Position {
    
    private float x, y;
  }
  
/***********************************************************************************************/

  // Displays per default the Cursor
  public void display() {
    fill(255, 255, 0);
    rect(this.position.x, position.y, 30, 10);
    triangle(position.x + 30, position.y - 10, position.x + 30, position.y + 20, position.x + 50, position.y + 5);
  }
  
/***********************************************************************************************/
  
  // Get the Position
  public Position getPosition() {
    return this.position;
  }
  
/***********************************************************************************************/

  // Set the Position
  public void setPosition(float x, float y) {
    this.position.x = x;
    this.position.y = y;
  }
}