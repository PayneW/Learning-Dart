/**
 * - 6-4 构造方法: 构造方法就是创建对象的时候调用的方法，和其他方法不太一样的是，构造方法是
 *     以类名开头的
 *      + 如果没有自定义构造方法，则会有个默认构造方法
 *      + 如果存在自定义构造方法，则默认构造方法无效
 *
 */

void main() {
    var person = new Person('Tom', 20);
}

class Person {
    // 这里 name 和 age 也是必须定义的，毕竟 Dart 中的类语法和 Java 比较像，不像 js
    // 那样，类语法只是构造函数的语法糖。值得一说的 Python 中很少提及构造函数
    String name;
    int age;
    final String gender = 'Male';

    // 默认构造方法,可以不写
    // Person() {}

    // 自定义构造方法，则默认构造方法无效
    Person(this.name, this.age) {
        print(name);
        print(gender);
    }

    void work() {
        print("Work......");
    }
}