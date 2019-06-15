/**
 * - 7-2 继承
 *      + 使用关键字 extends 继承一个类
 *      + 子类会继承父类可见的属性和方法，不会继承构造函数方法
 *      + 子类能够复写父类的方法，getter 和 setter
 *      + 单继承，多态性
 */

class Person {
    String name;
    int age;
    String _birthday;

    // 计算属性
    // bool 定义一个返回值为 boolean 的 计算属性
    // (tip: Dart 中的计算属性的使用和属性一样，不是方法。)
    bool get isAdult {
        return age > 18;
    }

    void run() {
        print("Person run...");
    }
}

void main() {
    var student = new Student();
    student.study();

    // 访问父类类的属性
    student.name = 'Tome';
    student.age = 16;

    //
    print(student.isAdult);

    student.run();
}

// 继承 extends
class Student extends Person {
    void study() {
        print("Student study...");
    }

    // 复写父类的方法
    @override
    bool get isAdult => age > 15;

    // 复写父类的方法
    @override
    void run() {
        print("Student run...");
    }
}
