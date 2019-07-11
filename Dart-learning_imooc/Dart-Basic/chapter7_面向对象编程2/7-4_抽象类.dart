/**
 * - 7-4  Dart 中的抽象类:
 *      + 抽象类使用 abstract 表示，不能直接被实例化
 *      + 抽象方法不用 abstract 修饰，无实现
 *      + 抽象类可以没有抽象方法
 *      + 有抽象方法的类一定得声明为抽象类
 */

void main() {

    // 抽象类不能被实例化
    // var person = new Person();

    var person = new Student();
    person.run();   // Run...
}

// 抽象类使用 abstract 表示，不能直接被实例化
// tip: Dart 中的抽象类更像其他语言中的接口，尽管说 Dart 中有接口的概念，只是 Dart 中的
// 接口和其他语言不太一样。
abstract class Person {

    // 抽象方法不用 abstract 修饰，无实现
    // 抽象类可以没有抽象方法，如果有的话就是这样
    void run();  // 或者: void run() {}
}

// 抽象类需要使用继承得形式，让子类来实例化
class Student extends Person {
    @override
    void run() {
        print("Run...");
    }
}
