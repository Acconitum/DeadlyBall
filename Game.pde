public class Game {

  /*
  * Autor:      Marc Mentha
   * Class:      Runs the game and cotrols the views
   * Date:       05.10.2016
   */

  /***********************
  * Define Variables
  ***********************/
  private boolean isRunning;
  private View activeView;

  /***********************************************************************************************/

  public void initalize() {

    // Initializes the game at first start

    // Game run
    this.isRunning = true;

    // We start with the mainmenu
    this.activeView = new MainMenuView();
    this.activeView.initialize(this);
  }

  /***********************************************************************************************/

  public void run() {

    //this.actualView.handleEvents();
    this.activeView.display();
    this.activeView.handleEvents();
  }

  /***********************************************************************************************/

  public boolean isRunning() {
    return this.isRunning;
  }

  /***********************************************************************************************/

  public void changeView(String changeToView) {

    switch ( changeToView ) {

    case "Mainmenu":
      this.activeView = new MainMenuView();
      this.activeView.initialize(this);
      break;
      
    case "Read":
      this.activeView = new ManualView();
      this.activeView.initialize(this);
      break;

    case "Quit":
      this.isRunning = false;
      break;      

    default:
      println("Error! No View found");
      exit();
    }
  }
  
  /***********************************************************************************************/
  
  // Resets all global variables
  
  public void resetGlobals() {
    enterPressed = false;
    upPressed = false;
    downPressed = false;
  }
}

/***********************************************************************************************/

void keyReleased() {

  if (keyCode == ENTER) {
    enterPressed = true;
  }

  if ( key == CODED) {

    if (keyCode == DOWN) {
      downPressed = true;
    }

    if (keyCode == UP) {
      upPressed = true;
    }
  }
}