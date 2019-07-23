// Dart 语法预览示例代码

var topLevel = true;

main() {
  int lineCount;
  if (lineCount == null) {
    // print("Default value is null");
  }

  // > 词法作用域
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
}
