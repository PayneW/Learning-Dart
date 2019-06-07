/**
 *
 */

void main() {
    /** var 和 const */
    var a;
    print(a); // null
    a = 10;
    print(a); // 10
    a = "Hello Dart";
    print(a); // Hello Dart

    var b = 20;
    print(b);

    final c = 30;
    final d = 50;
    print(c + d);

    print("\n// " + "~" * 78);
    print('\n');

     const e = 20;
     // e = 50;
}