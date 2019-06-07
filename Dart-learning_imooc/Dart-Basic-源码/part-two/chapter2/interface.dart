/**
 * @Author: 雷◕‿◕宇
 * @Description: 接口
 * @Date: 2018/10/31
 */
void main() {
  var student = new Student();
  student.run();
}

//class Person{
//  String name;
//
//  int get age => 18;
//
//  void run(){
//    print("Person run...");
//  }
//}

abstract class Person{

  void run();

}

class Student implements Person{

  @override
  void run() {
    print("Student run...");
  }

}
