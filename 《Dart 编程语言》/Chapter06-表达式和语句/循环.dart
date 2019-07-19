import 'dart:math' show pow;

main() {
  var v;
  for (v in [1, 2, 4, 8]) print(pow(2, v));

  List<Function> funs = new List(100);
  for (var i = 0; i < 100; i++) {
    // funs[i] = () => print(i);
    funs[i] = () {
      return print(i);
    };
  }
  // print("funs: ${funs}");
  // funs.forEach((f) => f());

  // ~~~~~~~~~~~~~~~~~~~~~~~~~~~

  /** > 6.2.7  assert（断言，声称） */
  print("factorial(5): ${factorial(5)}");


  /**
   * > 6.2.9 yield 和 yield-each：
   * - 生成器（generator）是一种返回迭代器（iterator）的函数。
   * - yield 语句被用于生成器函数内，目的是给生成的集合添加新的结果。
   *   yield 语句的形式是 yield e;
   * - yield 语句总是使它的表达式被求值。通常情况下，求值结果会被追加到外层生成器所关联
   *   的集合中。如果生成器是同步的（见 4.8.2 节），则关联的集合是一个 iterable（
   *   见 4.8.1节）；如果是异步的（见 8.6.2 节），则关联的集合是一个 stream（见 8.3 节）
   */
  print("naturalsDownFrom(5): ${naturalsDownFrom(5)}");
}


factorial(int x) {
  // assert(x >= 0);
  // return x == 0 ? 1: factorial(x-1);

  // 阶乘的最佳实现
  if (x > 1) return x * factorial(x-1);
  else return 1;
}


// Dart 中的生成器和迭代器和 JavaScript 中的不太一样
// > 这段代码存在一个性能 bug： 它的运行事件是二次方。
// - 第1个元素3只被 yield n; 生成1次；
// - 第2个元素2被 yield n; 和 yield i; 各生成1次；
// - 第3个元素1被 yield n; 生成1次，被 yield i; 生成2次。
// - 我们总共执行了 n(n-1) 次 yield i;, 即事件复杂度为 O(n^2)
/**
 * > Dart 为了解决上面的性能 bug 提供了 yield-each 语句。 yield-each 语句的形式为:
 * - yield* e;
 */
naturalsDownFrom(n) sync* {
  if (n > 0) {
    yield n;
    for (var i in naturalsDownFrom(n-1)) {
      yield i;
    }
  }
}

naturalsDownFrom02(n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom02(n-1);
  }
}