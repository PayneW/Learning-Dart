// Dart 语法预览示例代码

var topLevel = true;

main() {
  int lineCount;
  if (lineCount == null) {
    // print("Default value is null");
  }

  /** > 词法作用域 */
  var insideMain = true;
  void myFunction() {
    var insideFunction = true;
    void nestedFunction() {
      var insideNestedFunction = true;
      print("topLevel $topLevel");
      print("insideMain $insideMain");
      print("insideFunction $insideFunction");
      print("insideNestedFunction $insideNestedFunction");
    }
    nestedFunction();
  }
  myFunction();

  // ~~~~~~~~~

  /** > 词法闭包 */
  // 创建一个加 2 的函数
  var add2 = makeAdder(2);
  var add4 = makeAdder(4);
  print("add2(3): ${add2(3)}"); // 2 + 3 =  5
  print("add4(3): ${add4(3)}"); // 4 + 3 = 7
}

// Dart 词法闭包
// 返回一个函数，该函数会添加 "addBy" 到这个函数的参数上并返回
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}
