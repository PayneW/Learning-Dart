/**
 * - 对象 call 方法
 *      + 如果类实现了 call() 方法，则该类的对象可以作为方法使用
 *
 */
void main() {
    var person = new Person();
    // name = "Tome";
    // person.age = 20;

    // 把 person 对象 (构造函数的实例)可以当作方法使用
    print(person("Tome", 30));
}

class Person {
    String name;
    int age;
//    void work(){
//        print("Name is $name, Age is $age");
//    }

    String call(String name, int age) {
         return "Name is $name, Age is $age";
    }
}