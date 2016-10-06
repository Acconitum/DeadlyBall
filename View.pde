public interface View {
  
  /*
  * Autor:      Marc Mentha
  * Interface:  Handle events, update and draw the views
  * Date:       05.10.2016
  */  
  
  public void initialize(Game game);
  public void handleEvents();
  public void display();
}