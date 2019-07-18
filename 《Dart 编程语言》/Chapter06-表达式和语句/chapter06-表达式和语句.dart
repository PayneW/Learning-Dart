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

}