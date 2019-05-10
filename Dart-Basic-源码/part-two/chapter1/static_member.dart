/**
 * @Author: 雷◕‿◕宇
 * @Description: 静态成员
 * @Date: 2018/10/29
 */
void main() {
  var page = new Page();

  Page.scrollDown();
}

class Page{

  static const int maxPage = 10;

  static int currentPage = 1;

  //下滑
  static void scrollDown(){
    currentPage = 1;
    print("ScrollDown...");
  }

  //上滑
  void scrollUp(){
    currentPage++;
    print("scrollUp...");
  }

}
