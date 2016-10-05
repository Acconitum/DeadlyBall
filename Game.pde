public class Game {
  
  /*
  * Autor:      Marc Mentha
  * Class:      Runs the game and cotrols the views
  * Date:       05.10.2016
  */
  
  private boolean isRunning;
  private View actualView;
  
/***********************************************************************************************/
  
  public void initalize() {
    
    // Initializes the game at first start
    
    // Game run
    this.isRunning = true;
    
    // We start with the mainmenu
    this.actualView = new MainMenuView();
    this.actualView.initialize(this);
    
  }
  
/***********************************************************************************************/
  
  public void run() {
    
    //this.actualView.handleEvents();
    this.actualView.display();
    this.actualView.handleEvents();
    
  }
  
/***********************************************************************************************/
  
  public boolean isRunning() {
    return this.isRunning;
  }
  
/***********************************************************************************************/
  
  public void changeView(String changeToView) {
    
    switch ( changeToView ) {
      
     case "MainMenu":
       this.actualView = new MainMenuView();
       this.actualView.initialize(this);
       break;
       
     case "Quit":
        this.isRunning = false;
        break;      
      
      default:
        println("Error! No View found");
        exit();
    }
  }
}