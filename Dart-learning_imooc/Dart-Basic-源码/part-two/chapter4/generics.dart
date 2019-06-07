/**
 * @Author: 雷◕‿◕宇
 * @Description: 泛型
 * @Date: 2018/10/31
 */
void main() {
  var list = new List<int>();
  list.add(1);

//  var utils = new Utils<int>();
//  utils.put(1);

  var utils = new Utils();
  utils.put<int>(1);
}

class Utils{

   void put<T>(T element){
    print(element);
  }

//  void putString(String element){
//    this.elementStr = element;
//  }
}
