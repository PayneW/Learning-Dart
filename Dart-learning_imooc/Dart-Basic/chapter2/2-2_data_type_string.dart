/****** 数据类型 ******/

/**
  * String 字符串 (S 大写)
  *  - 常用方法:
  *      + contains()
  *      + substring()
  *      + startsWith(): 以什么开头
  *      + endsWith(): 以什么结尾
  *      + indexOf()
  *      + lastIndexOf()
  *      + toLowerCase()
  *      + toUpperCase()
  *      + trim()
  *      + trimLeft()
  *      + trimRight()
  *      + split()
  *      + replaceXXX()
  */

void main() {
    String str1 = 'Hello';
    // 三个引号为定义多行字符串
    String str2 = '''Hello
                    Dart''';
    print(str1);
    print(str2);

    String str3a = "Hello \nDart";
    // 在字符串前面添加 r, 可以创建一个 "原始 raw" 字符串
    String str3b = r"Hello \n Dart";
    print(str3a);
    print(str3b);   // Hello \n Dart

    String str4 = "This is my favorite language";
    print(str4 + " New");
    // 字符串重复 5 次
    // print(str4 * 5);
    print(str4[1]); // h
    print(str4.length);
    print(str4.isNotEmpty);
    print(str4.contains('This'));
    print(str4.substring(0, 3));
    print(str4.startsWith("a"));
    print(str4.endsWith("ge"));

    var list = str4.split(" ");
    // [This, is, my, favorite, language]
    print(list);
    // That is my favorite language
    print(str4.replaceAll('This', 'That'));

    // 插值表达式
    int aa = 1;
    int bb = 2;
    // aa + bb = 3
    print("aa + bb = ${aa + bb}");
    print("aa = $aa");  // aa = 1

    print("\n// " + "~" * 78);
    print('\n');

}