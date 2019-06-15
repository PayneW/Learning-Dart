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

void main() {
    var d = new D();
    // 现在就可以调用 Class A/B/C 的方法了
    d.a();
    d.b();
    d.c();
}

class A {
    void a() {
        print("A.a()...");
    }
}

class B {
    void b() {
        print("B.b()...");
    }
}

class C {
    void c() {
        print("C.c()...");
    }
}

// Mixins 使用方式: extends 类名(Mixin) with + 类名(Mixin)，类名(Mixin)，类名(Mixin)
class D extends A with B, C {

}