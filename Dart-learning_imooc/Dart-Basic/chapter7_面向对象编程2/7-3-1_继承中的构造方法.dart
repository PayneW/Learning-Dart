/**
 * - 7-3 继承中的构造方法
 *      + 子类的构造方法默认会调用父类的无名无参构造方法
 *      + 如果父类没有无名无参构造方法，则需要显示调用父类构造方法
 *      + 在构造方法参数后使用 : 显示调用父类构造方法
 * - 构造方法执行顺序
 *      + 父类的构造方法在子类构造方法体开始执行的位置调用
 */

void main() {
    var student = new Student('Jake', 'Male');
    // name 属性在父类中定义
    print(student.name);    // Jake
    // gender 属性在子类中定义
    print(student.gender);  // Male
}

class Person {
    String name;

    // 当前父类的无名无参的构造方法(子类的构造方法默认会调用父类的无名无参构造方法)
    // Person() {
    //     print('Person...');
    // }

    Person(this.name);

    // tip: 父类方法执行顺序优先于子类方法
    Person.withName(this.name){
        print('withName print:' + this.name);
    }
}

class Student extends Person {
    int age;

    final String gender;

    // 🔺: 当前 Student() 就是继承中的构造方法
    // 给当前 Student 类传入 (name, gender) 并调用父类的 withName 方法且把 name 实参传入
    Student(String name, String g): gender = g, super.withName(name);
}