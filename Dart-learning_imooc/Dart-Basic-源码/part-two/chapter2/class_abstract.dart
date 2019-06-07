/**
 * @Author: 雷◕‿◕宇
 * @Description: 抽象类
 * @Date: 2018/10/30
 */
void main() {
  var person = new Student();
  person.run();
}

abstract class Person{

  void run();
}

class Student extends Person{
  @override
  void run() {
    print("run...");
  }

}
