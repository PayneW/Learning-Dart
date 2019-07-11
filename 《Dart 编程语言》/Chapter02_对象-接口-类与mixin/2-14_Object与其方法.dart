/**
 * - 2-14 Object 及其方法
 *   +
 */


main() {

    // 来源: http://dart.goodev.org/guides/language/effective-dart/design#object--dynamic-
    // 要使用 Object 来代替 dynamic 表示可以接受任意对象。
    // Object 类型说明: 可以接受任意对象，只需要这个对象定义了 Object 所定义的函数即可。
    // 而 dynamic 类型表达式意思是: 没有一个类型可以表达你所期望的对象。(有可能有类型可以
    // 表达，但是你不在乎。)

    // Accepts any object.
    void log(Object object) {
        print(object.toString());
    }

    // Only accepts bool or String, which can't be expressed in a type
    // annotation. 只接受 bool/String, 它们不能在类型注释中表示。
    bool convertToBool(arg) {
        if (arg is bool) return arg;
        if (arg is String) return arg == 'true';
        throw new ArgumentError('Cannot convert $arg to a bool.');
    }

}


// Dart 中内置的 Object 类型
class Object {

  const Object();

  external bool operator ==(other);

  external int get hashCode;

  external String toString();

  @pragma("vm:entry-point")

  external dynamic noSuchMethod(Invocation invocation);

  external Type get runtimeType;
}
