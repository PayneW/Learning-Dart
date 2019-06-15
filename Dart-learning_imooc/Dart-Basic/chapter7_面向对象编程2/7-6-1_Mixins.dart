/**
 * - 7-6 Mixins
 *   + (JavaScript 中的 Mixin: 混合(Mixin)是 js 中实现对象组合的一种模式。在一个 mixin
 *      方法中，一个对象接受来自另一个对象的属性和方法。许多 js 库中都有类似的 mixin 方法。)
 *   + Dart 中的 Mixins 类似于多继承，是再多类继承中重用一个类代码的方式
 *   + 作为 Mixin 的类不能有显示声明的构造方法
 *   + 作为 Mixin 的类只能继承自 Object
 *   + 使用关键字 with 连接一个或多个 Mixin
 *
 */

// tip: 建议使用抽象类的形式来实现接口
abstract class Engine {
    void work();
}

/**
 *  - 7-5 Dart 中的接口
 *      + 在 Dart 中: 类和接口是统一的，类就是接口
 *      + 每一个类都隐式的定义了一个包含所有实例成员的接口
 *      + 如果是复用已有类的实现，使用继承 (extends)
 *      + 如果只是使用已有类的外在行为，使用接口 (implements)
 */
class OilEngine implements Engine {
    @override
    void work() {
        print("Work with oil...");
    }
}

class ElectricEngine implements Engine {
    @override
    void work() {
        print("Work with Electric...");
    }
}

// tyre /ˈtaiə/ ~~~n.轮胎
class Tyre {
    String name;
    void run() {}
}

// 构建一个电动小汽车 (Car) 的类
// class Car extends Tyre with ElectricEngine {}
// 一般都是写下面这种简写形式
class Car = Tyre with ElectricEngine;