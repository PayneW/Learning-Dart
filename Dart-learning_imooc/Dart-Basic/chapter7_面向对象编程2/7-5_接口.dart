/**
 * - 7-5 Dart 中的接口
 *      + 在 Dart 中: 类和接口是统一的，类就是接口
 *      + 每一个类都隐式的定义了一个包含所有实例成员的接口
 *      + 如果是复用已有类的实现，使用继承 (extends)
 *      + 如果只是使用已有类的外在行为，使用接口 (implements)
 *
 * - **implement ['ɪmplɪm(ə)nt]  ~~~vt.实现，执行，落实。  ~~~n.工具，设备**
 *      + --> How do we implement this? 那我们怎么来执行呢？
 *      + --> How do you implement this practice? 您如何执行这个实践?
 *      + --> Otherwise, you would have to implement this feature yourself.
 *          否则，您就需要自己想办法实现这个特性。
 *
 */

void main() {
    var student = new Student();
    student.run();
}

// 每个类都隐式的定义了一个包含所有实例成员的接口
// class Person{
//     String name;
//
//     // 计算属性
//     int get age {
//         return 18;
//     }
//
//     void run() {
//         print("Person run...");
//     }
// }

// tip: 建议使用抽象类的形式来实现接口
abstract class Person{
    void run();
}

// Dart 中直接使用类名来作为接口的使用
class Student implements Person{
    void run() {
        print("Student run...");
    }
}