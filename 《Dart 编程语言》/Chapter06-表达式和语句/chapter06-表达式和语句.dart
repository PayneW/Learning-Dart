/** # 第 6 章 -- 表达式和语句 */

var global = 0;
var shadowed = 1;

aFunction(x) => x*x + global + shadowed;

// 参考文章：http://bbs.itying.com/topic/5ce60c8c3f2d2617c8f3f86e (tip: 做下笔记)
// <T>: 不指定类型放弃了类型检查。我们现在想实现的是传入什么 返回什么。
// 比如:传入number 类型必须返回number类型  传入 string类型必须返回string类型。
class AClass<T> {
  // 类变量也称静态变量，但静态变量包含了：类变量和顶层变量。
  static var aClassVariable = 2;
  var anInstanceVariable = 3;
  static var shadowed = 4; // shadows top-level variable

  // 类方法
  static aClassMethod() {
    print(shadowed);
    print(aClassVariable);
    // print(anInstanceVariable); // error
  }

  aMethod(aParameter) {
    var aLocal = 5;
    var anUnassignedLocal;
    var shadowed = 6; // shadows static variable
    localFunction(x) => 7;
    {
      var moreLocal = 8;
      var shadowed = 9; // shadows local
      moreLocalFunction(y) {
        return moreLocal;
      }
      print("global: ${global}");
      print("shadowed: ${shadowed}");
      print("aFunction: ${aFunction}");
      print("AnotherClass: ${AnotherClass}");
      print("F: ${F}");
      print("AClass: ${AClass}");
      print("T: ${T}");
      print("aClassVariable: ${aClassVariable}");
      print("anInstanceVariable: ${anInstanceVariable}");
      print("aMethod: ${aMethod}");
      print("anotherMethod: ${anotherMethod}");
      print("aParameter: ${aParameter}");
      print("localFunction: ${localFunction}");
      print("aLocal ${aLocal}");
      print("anUnassignedLocal: ${anUnassignedLocal}");
      print("moreLocal ${moreLocal}");
      print("moreLocalFunction: ${moreLocalFunction}");
    }
    print("shadowed ${shadowed}");
  }

  anotherMethod() => 10;
}

class AnotherClass{}

typedef int F(int x);






