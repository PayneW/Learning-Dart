/** 第 7 章 -- 反射（Reflection）*/

// 7.1 自省
import 'dart:mirrors' show reflectClass, ClassMirror;

class SuperClass {
  int superField = 0;
  // super final field 超级决赛场
  final int superFinalField = 1;

  int get superGetter => 2;
  set superSetter(x) {}

  int superMethod(x) => 4;

  static int superStaticField = 5;

  static final int superStaticFinalField = 6;

  static const int superStaticConstField = 7;

  static int get superStaticGetter => 8;
  static set superStaticSetter(x) {}

  static int superStaticMethod(x) => 10;
}

class SelfPrinting extends SuperClass {
  int aField = 11;
  final int aFinalField = 12;
  get aGetter => 13;
  set aSetter(x) {}
  int aMethod(x) => 15;
  static int staticField = 5;
  static final int staticFinalField = 6;
  static const int staticConstField = 7;
  static int get staticGetter => 8;
  static set staticSetter(x) {}
  static int staticMethod(x) => 10;
}

main() {
  // 此应用使用 dart:mirrors 中定义的顶层函数 reflectClass() 在类 SelfPrinting 之上
  // 获得一个 mirror, 最终得到 ClassMirror 的一个实例，它支持 getter 方法
  // instanceMembers。调用类 mirror 的 instanceMembers 将返回一个以被反射类的实例成员
  // 命名 key 的 map。 该 map 的 key 构成了一个类实例成员名称的列表，我们可以直接打印。
  ClassMirror cm = reflectClass(SelfPrinting);
  for (Symbol memberName in cm.instanceMembers.keys) {
    // 所有打印的值都是类 Symbol 的实例，他们表示使用 Dart 的 mirror API 反射得到的
    // 实体的名称。

    // memberName: Symbol("==")
    // memberName: Symbol("hashCode")
    // memberName: Symbol("toString")
    // memberName: Symbol("noSuchMethod")
    // memberName: Symbol("runtimeType")
    // memberName: Symbol("superField")
    // memberName: Symbol("superField=")
    // memberName: Symbol("superFinalField")
    // memberName: Symbol("superGetter")
    // memberName: Symbol("superSetter=")
    // memberName: Symbol("superMethod")
    // memberName: Symbol("aField")
    // memberName: Symbol("aField=")
    // memberName: Symbol("aFinalField")
    // memberName: Symbol("aGetter")
    // memberName: Symbol("aSetter=")
    // memberName: Symbol("aMethod")
    print('memberName: ${memberName}');
  }

  for (Symbol memberName  in cm.staticMembers.keys) {
    // staticMembers: Symbol("staticField")
    // staticMembers: Symbol("staticField=")
    // staticMembers: Symbol("staticFinalField")
    // staticMembers: Symbol("staticConstField")
    // staticMembers: Symbol("staticGetter")
    // staticMembers: Symbol("staticSetter=")
    // staticMembers: Symbol("staticMethod")
    print('staticMembers: ${memberName}');
  }
}






