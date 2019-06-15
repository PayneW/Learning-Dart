/**
 * - 7-3 继承中的构造方法
 *      + 子类的构造方法默认会调用父类的无名无参构造方法
 */

void main() {
    var student = new Student();
}

class Person {
    String name;

    // 当前父类的无名无参的构造方法(子类的构造方法默认会调用父类的无名无参构造方法)
    Person() {
        print('Person...');
    }
}

class Student extends Person {
    int age;
}