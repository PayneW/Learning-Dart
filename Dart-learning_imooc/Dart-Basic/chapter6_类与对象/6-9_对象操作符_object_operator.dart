/**
 * - 6-9 对象操作符
 *      + 条件成员访问: ?.
 *      + 类型转换: as
 *      + 是否指定类型: is， is！
 *      + 级联操作: ..
 *          - 级联操作符允许你在同一个对象上进行一系列操作。除了函数调用之外，还可以访问同一
 *             对象上的字段。这通常会为你节省创建临时变量的步骤，并允许您编写更流畅的代码。
 */

void main() {
//    Person person = new Person();
//    person ?.name;
//    // 如果 person 为空就不往后执行，那什么情况是为空的？ A: 比如这样定义 Person person。
//    person ?.work();

    var person;
    person = "";
    person = new Person();
    // print(person); // Instance of 'Person'
    // (person as Person).work();

    // 如果 person 是 Person 构造函数的实例，
    // if (person is Person) {
    //     person.work();
    // }
    person..name = "Tome"
            ..age = 20
            ..work();
}

class Person{
    String name;
    int age;

    void work() {
        print("$name, $age Work...");
    }
}