/**
 * @Author: 雷◕‿◕宇
 * @Description: 对象call方法
 * @Date: 2018/10/29
 */
void main() {
    var person = new Person();

    print(person("Test",30));

}

class Person{
  String name;
  int age;

//  void work(){
//    print("Name is $name,Age is $age");
//  }

  String call(String name,int age){
    return "Name is $name,Age is $age";
  }
}
