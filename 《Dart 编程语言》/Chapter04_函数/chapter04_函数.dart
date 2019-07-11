/**
 * 第 4 章: 函数
 *   - 4.2 函数体
 *      + Dart 中的每个函数要么返回一个值，要么抛出一个异常。
 *
 */

// side effect 副作用
sideEffect() {
    // exception
    print("I don't hava a return and I don't throw an exception!");
    print("What is my value?");
}


/**
 * - 4.7 函数作为对象
 *  > Dart 是一门面向对象的语言，所以 Dart 中所有运行时的值都是对象，包括函数。
 */

makeCounter() {
    var counter = 0;
    increment() => ++counter;
    return increment;
}

f(x) {
    // 下面简写
    // return (x) {
    //     return x;
    // };
    return (x) => x;
}

g() {
    h() => 42;
    h.runtimeType is Function;  // true

    // 不要指望结果为 true
    h.runtimeType == (() => 42).runtimeType;

    // 以及这个
    g.runtimeType == h.runtimeType;

    // 甚至这个
    (() => 42).runtimeType == (() => 42).runtimeType;
}


main() {
    // 函数没有返回值时默认为 null
    print(sideEffect());    // null

    print('\n' + '*' * 66 +'\n');
    print(makeCounter()()); // 1
    print(makeCounter()()); // 1
    print(makeCounter()()); // 1

    print('\n' + '*' * 66 +'\n');
    // Q: 这里树上说是 3 个 true，但是打印确实 3 个 false
    print(f.runtimeType is Function);   // false
    print(f(3).runtimeType is Function);   // false
    print(g.runtimeType is Function);  // false

    // 可能是true, 也可能不是
    print("f(2).runtimeType == f.runtimeType: ${f(2).runtimeType == f.runtimeType}");

    // 因为参数个数不同，所以不大可能相等，但不能保证。
    print("f.runtimeType == g.runtimeType: ${f.runtimeType == g.runtimeType}");
}