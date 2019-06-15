/** > 验证函数的相等性
 *  - 下面的例子验证了顶级函数、静态函数和实例方法的相等性:
 */

// 一个顶级函数
void foo() {}

class A {
    // 一个静态函数
    static void bar() {}

    // 一个实例方法
    void baz() {}
}

// main 也是顶级函数
void main() {
    var x;

    // 比较顶级函数
    x = foo;
    assert(foo == x);

    // 比较静态函数
    x = A.bar;
    assert(A.bar == x);

    // 比较实例方法
    var v = A();    // Instance #1 of A
    var w = A();    // Instance #2 of A
    var y = w;
    x = w.baz;

    // 闭包指向同一个实例
    // 因此他们是相等的
    assert(y.baz == x);

    // 闭包指向不同的实例
    // 因此他们是不相等的
    assert(v.baz != w.baz);
}