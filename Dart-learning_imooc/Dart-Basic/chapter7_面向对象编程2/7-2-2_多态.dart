/**
 * - 7-2-2 多态:
 *   + 多态: 把子类的实例赋值给父类的一个引用.
 */

class Person {
    String name;
    int age;
    String _birthday;

    // 计算属性
    // bool 定义一个返回值为 boolean 的 计算属性
    bool get isAdult {
        return age > 18;
    }

    void run() {
        print("Person run...");
    }

    @override
    String toString() {
        // TODO: implement toString
        return "Name is $name, Age is $age";
    }
}

void main() {
    // 多态: 把子类的实例赋值给父类的一个引用，
    Person person = new Student();


    person.name = 'Eric';
    person.age = 17;

    // person 这里访问的是子类中 override 复写的父类的方法
    print(person.isAdult);  // true
    person.run();   // Student run...

    // 必须添加判断 person 多态才可以访问 study()
    if (person is Student) {
        person.study(); // Student study...
    }

    print(person);  // Instance of 'Student'
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
