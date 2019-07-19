/** 第 7 章 -- 反射（Reflection）*/

// 7.1.1.2 最小化
import 'dart:mirrors' show ClassMirror, MirrorSystem, reflectClass;

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
  ClassMirror cm = reflectClass(SelfPrinting);

  for (Symbol memberName in cm.instanceMembers.keys) {
    print('memberName: ${MirrorSystem.getName(memberName)}');
  }
}






