
library points;

import 'dart:math';

main() {
    var aPoint = new Point(3, 4);
    print("aPoint.scale(2).x: ${aPoint.scale(2).x}");
    print("aPoint.scale(2).y: ${aPoint.scale(2).y}");
    aPoint.scale(2).y;

    var anotherPoint = new Point(3, 4);

    // 调用 + 号操作符覆写
    print("(aPoint + anotherPoint).y: ${(aPoint + anotherPoint).y}");
}

class Point {
    // (1)
    var x, y;
    // (2)
    Point(this.x, this.y);
    scale(factor) => new Point(x * factor, y * factor);
    // (3)
    operator +(p) => new Point(x + p.x, y + p.y);
    // (4)
    static distance(p1, p2){
        var dx = p1.x - p2.x;
        var dy = p1.y - p2.y;
        return sqrt(dx * dx + dy * dy);
    }
}

/**
 * - (1)、Point 类有2个实例变量 (或者字段) x 与 y。每个 Point 类的实例都有各自的 x 和 y
 *      变量的副本。
 * - (2)、变量 x 与 y 的值是由构造函数的实际参数来设置的，构造函数是由 new 调用的。
 *      (Dart 2.x 开始 new 可以省略了。) 将构造函数的形参直接赋值给同名的字段，这种方式
 *      非常普遍，所以 Dart 提供了上面的这种特殊的语法糖，原本的语法为:
 *      + Point(a, b) { x = a; y = b; }
 * - (3)、+ 操作符(操作符覆写)的行为就像是一个实例方法，而事实上，他们就是一个有着怪异名称和
 *      调用语法的实例方法。
 * - (4) static 静态成员
 *      + 添加 static 后变成静态方法，不能被实例的对象来访问.
 *      + 静态成员不能访问非静态成员，非静态成员可以访问静态成员.
 *      + 类中的常量需要使用 static const 声明.
 */