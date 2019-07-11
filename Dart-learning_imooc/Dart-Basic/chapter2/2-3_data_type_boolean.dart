 /**
  *
  * Booleans (布尔值)
  * - 为了代表布尔值， Dart 有一个名字为 bool 的类型。只有两个对象是布尔类型的:
  *   true 和 false 所创建的对象，这两个对象也都是编译时常量。
  */

void main() {
     bool isTrue = true;
     bool isFalse = false;
     if (isTrue) {
          // isTrue true
          print("isTrue true");
     }

     // 不会执行
     if (isFalse) {
          print("isFalse false");
     }

     // - assert 断言
     var a = true;
     assert(a);

     // 只有 true 对象才被人为是 true. 所有其他的值都是 false.
     String name = 'puppy';
     // if (name) {
     //      print('this is a dog');
     // }
}