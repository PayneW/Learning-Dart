
import 'dart:math';

class Point {
    /**
     * - (1) 这里的初始化列表是从 Point(a, b) 后的冒号开始知道该行结尾的封号。初始化操作
     *      用逗号分割，并从左到右执行。
     *
     */

    // 笛卡尔坐标 (x,y) 转换为极坐标 (r,θ) :
    //   r = √ ( x 2 + y 2  )
    //   θ = tan^-1( y / x)
    // rho 为 ρ;  theta 为 θ
    var rho, theta;
    // (1)
    Point(a, b) : rho = sqrt(a * a + b * b), theta = atan(a / b);
    get x => rho * cos(theta);
    get y => rho * sin(theta);
    scale(factor) => new Point(rho * factor, theta);
    operator + (p) => new Point(x + p.x, y + p.y);
    static distance(p1, p2) {
        var dx = p1.x - p2.x;
        var dy = p1.y - p2.y;
        return sqrt(dx * dx + dy * dy);
    }
}

class Point3D extends Point {
    /**
     * - (1) 初始化列表调用父构造函数。 也就是 Point3D(x1, y1, z) 在执行自身的构造函数的函
     *      数体之前调用 Point(x1, y1) 的构造函数的函数体。
     * - (2)
     */

    var z;
    // (1)
    Point3D(a, b, c) : super(a, b) {z = c;}
}

main() {
    var point3d = new Point3D(7, 8, 9);
    print(point3d.x);
    print(point3d.y);
    print("point3d.scale(3).rho: ${point3d.scale(3).rho}");

    // P9: static 修饰符表明此方法不针对某个特定实例，它无法访问实例变量 x 和 y, 因为实例
    // 变量对于每个 Point 实例都是不同的。 所以等到后面看了新知识再回来更改这里的调用。
    var aPoint = new Point(3, 4);
    var bPoint = new Point(5, 6);
    // 2.12_类方法: P32 页
    print("Point.distance(aPoint, bPoint).toStringAsFixed(2): "
        "${(Point.distance(aPoint, bPoint).toStringAsFixed(2))}");
}

