/** Dart 语言中文教程 */

bool topLevel = true;

void main() {

    /** > 函数作为一等对象: 你可以把函数作为参数传递给其他函数。比如: */
    void printElement(int element) {
        print(element);
    }

    var list = [1, 3, 5, 7];

    // 把 printElement 作为参数
    list.forEach(printElement);


    // 还可以把函数赋值给一个变量， 比如:
    var loudify = (msg) => "!!! ${msg.toUpperCase()} !!!";
    if (loudify("hello") == '!!! HELLO !!!') {
        print("Yes, it is equal");
    }


    print( "\n" + "// " + "*" * 76);


    /** > 匿名函数: */
    // 下面的例子定义了一个匿名函数，包含一个无类型的参数 item. 这个函数会从列表汇总的每一个
    // 元素调用，打印一个包含了在指定索引处的值的字符串。
    var fruits = ['apples', 'bananas', 'oranges'];
    fruits.forEach((item) {
        // 0 : apples
        // 1 : bananas
        // 2 : oranges
       print("${fruits.indexOf(item)} : $item");
    });
    print( "\n");

    // 使用箭头函数简化上面的写法
    fruits.forEach((item) => print("${fruits.indexOf(item)} : $item"));

    print( "\n" + "// " + "*" * 76);


    /** > 词法作用域: Dart 是此法作用域语言，意味着变量的作用域是静态确定的，简单地通过代码
     * 的布局来确定。*/
    // 在 main() 函数外围定义 bool topLevel = true;
    var insideMain = true;
    void myFunction() {
        var insideFunction = true;
        void nestedFunction() {
            var insideNestedFunction = true;
            assert(topLevel);
            assert(insideMain);
            assert(insideFunction);
            assert(insideNestedFunction);
        }
    }
    myFunction();


    /** > 语法闭包: */

}
