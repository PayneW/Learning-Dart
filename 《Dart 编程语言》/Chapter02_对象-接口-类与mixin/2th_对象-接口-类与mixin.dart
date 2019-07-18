/**
 * # 第二章 : 对象、接口、类 与 mixin
 *
 *  > 一个对象由 (可能为空的) 一组字段提供状态，由一组方法提供行为。对象的状态可以是可变或不
 *    变的。对象的方法永不为空，因为所有的 Dart 对象都具备一定的行为。对象从它们的类中获取
 *    行为。每个对象都有一个类，我们将之表述为对象是类的一个实例。因为每个对象都有一个决定其
 *    行为的类，所以 Dart 是一门基于类的语言。
 */

/* > 除了内置在每个 Dart 实现中的 Object 类，每个类都有一个父类。一个类可以明确地列出它的父
 *    类，但不是必需的。如果一个类没有列出父类，那么其父类就是 Object。 Point 类就是这种
 *    情况。如果下所以，我们可以明确地指明 Object 作为 Point 的父类，明确指定 Object 类
 *    与不指定 Object 类这两种定义方式是完全相同的。*/
// 定义对象行为的方法通常被称为对象的实例方法。
// class Point extends Object {
// ... 其余定义未变
// }

/** - 2.1 accessor (访问器方法) : [tip: js 称为访问器属性， Dart 中叫为方便访问值所提供
 *    的特殊方法。 在 "2.2 实例变量" 中明确说明 '声明实例或静态变量会自动引入一个 getter。如
 *    果变量是可变的，则一个 setter 也会自动定义。' 这就是说 Dart 给实例中的变量默认就设置了
 *    访问器属性，而且是内置的；对比一下 js 如果想把对象的属性变成响应式的，就必须用
 *    Object.defineProperty() 来设置 get/set 才可以，这一点来看，Dart 语法确实更... ]
 */

// 为了理解 accessor, 我们再次重温 Point 类 (../Chapter01/points.dart), 并考虑如何修
// 改以让他使用极坐标("Polar coordinates 极坐标". Tip: 极坐标见同级目录:《极坐标与笛卡尔
// 坐标.png》)， 我们很容器就把字段 x 和 y 替换为新的字段 rho 和 theta。然而，我们仍有可能
// 部分客户端需要访问直角坐标(笛卡尔坐标)，所以我们可以选择使用存储的极坐标来计算直接坐标。

/* 先给出更改后的整体代码，然后添加注解 */
import 'dart:math';

class Point {
  /* 笛卡尔坐标 (x,y) 转换为极坐标 (r,θ):
   * r = √ ( x 2 + y 2  )
   * θ = tan^-1( y / x)
   */
  // rho 为 ρ;  theta 为 θ
  var rho, theta;

  Point(a, b) {
    // sqrt 开平方
    rho = sqrt(a * a + b * b);
    // atan 反正切
    theta = atan(a / b);
  }

  // (1)、P14
  get x => rho * cos(theta);

  set x(newX) {
    rho = sqrt(newX * newX + y * y);
    print("rho=sqrt(newX * newX + y * y): ${rho}");
    theta = acos(newX / rho);
  }

  // (2-0)、
  set y(newY) {
    rho = sqrt(x * x + newY * newY);
    print("rho=sqrt(x * x + newY * newY): ${rho}");
    theta = asin(newY / rho);
  }

  get y => rho * sin(theta);

  scale(factor) => new Point(rho * factor, theta);

  operator +(p) => new Point(x + p.x, y + p.y);

  static distance(p1, p2) {
    var dx = p1.x() - p2.x();
    var dy = p1.y() - p2.y();
    return sqrt(dx * dx + dy * dy);
  }
}

main() {
  var myPoint = new Point(3, 4);
  print("myPoint.scale(2).x: ${myPoint.scale(2).x}");
  print("myPoint.scale(2).y: ${myPoint.scale(2).y}");

  // (2-1)、
  myPoint.y = myPoint.y * 2;
  print("myPoint.y: ${myPoint.y}");
  myPoint.scale(2).y;

  /* 注释: (1)、(2-0)、(2-1)
     * - (1)、 Dart 提供的 getter 方法是一种更好的解决方案，它们通常被称为 getter. getter
     *    是一个不带参数的特殊方法，可以在不提供参数列表的情况下直接调用。getter 方法的引入是通
     *    过在方法名前添加前缀 get. getter 方法不需要参数列表，甚至是空的参数列表。
     *       getter 的调用语法与变量的访问没有区别。
     *    细心的读者现在应该会问，Dart 编译器如何知道 2 者的区别呢？ A: 答案是它不知道。Dart
     *    中所有实例变量的访问，实际上都是调用 getter。每个实例变量始终有一个与之关联的 getter,
     *    由 Dart 编译器提供。
     * - (2-0)、现在上面更新后的 Point 类并没有对应的可以被赋值的字段。客户端不清楚怎么修改并使其
     *    代码保持运行。为了解决这个问题，我们使用 setter 方法 (简称为 setter). setter 方法名
     *    前要添加前缀 set, 并只接收一个参数。 setter 的调用语法与传统的变量赋值是一样的。如果一个
     *    实例变量是可变的，则一个 setter 将自动为它定义，所有实例变量的赋值实际上都是对 setter
     *    的调用。 调用代码见 (2-1)、
     */

  /**
   * ## 2-2 实例变量
   *   - 当一个类声明一个实例变量时，它会确保每个实例都有自己的唯一变量复制。对象的实例变量需要
   *     占用内存，这块内存时在对象创建时分配的。
   *   - Dart 会将每个新分配的变量 (不只是实例变量，还包括局部变量、类变量和顶层变量) 初始化为
   *     null。在 Dart 中，与其他对象一样，null 也是一个对象。我们不能把 null 与其他对象
   *     混淆，如 0 或 false。 null 对象只是在 Dart 核心库中定义的 null 类的唯一实例。这种
   *     情况与其他语言如 C、C++、C#、Java 或 JavaScript 是不一样的，但这是一切皆对象的理
   *     念带来的必然结果。
   *   - 声明实例或静态变量会自动引入一个 getter。如果变量是可变的，则一个 setter 也会被自动
   *     定义。事实上，Dart 中的字段都不是直接访问的，所有对字段的引用都是对 accessor 方法的
   *     的调用。只有对象的 accessor 才能直接访问它的状态，所有访问对象状态的代码都必须通过这
   *     些 accessor 方法，这意味着每个类的底层表示都可以随时更改，且不需要客户端修改代码，甚
   *     至重新编译也不需要！这种属性被称为 "表征独立"。
   */
}
