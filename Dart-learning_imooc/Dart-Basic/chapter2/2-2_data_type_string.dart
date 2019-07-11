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
    // 多行字符串 '''xxx''' / """xxx"""
    const line1 = '''
        犬吠水声中，桃花带露弄。
        林深时见鹿，溪午不闻钟。
        野竹分青霭，飞泉挂碧峰。
        无人知去处，愁倚两三松。
            - 李白《访戴天山道士不遇》
    ''';
    print(line1);

    String str3a = "Hello \nDart";
    // 在字符串前面添加 r, 可以创建一个 "原始 raw" 字符串
    String str3b = r"Hello \n Dart";
    print(str3a);
    print(str3b);   // Hello \n Dart

    String str4 = "This is my favorite language";
    print(str4 + " New");
    // 字符串重复 5 次
    // print(str4 * 5);

    /** - 5、字符串的相关属性 */
    // 根据索引获取字符串中的每一个字符
    print(str4[1]); // h

    // 字符串的长度
    print(str4.length);

    // 字符串是否为空
    print(str4.isEmpty);
    // 字符串是否不为空
    print(str4.isNotEmpty);

    // 返回字符串 Unicode 代码的可迭代对象
    print("str4 字符串的 Unidcode 可迭代对象: ${str4.runes}");
    // 返回字符串的 UTF-16 代码单元列表
    print(str4.codeUnits);
    // 返回根据代码单元生成的哈希码
    print(str4.hashCode);
    // 返回最想运行时的类型
    print(str4.runtimeType);    // string


    /** - 6. 字符串的相关方法: */
    /*
     * + String.compareTo() 方法: 通过删除前后空格返回一个新字符串。但是此方法不会丢弃
     *   两个字符串之间的空格。
     *     + 返回值类型: 返回表示两个字符串之间关系的整数。
     *         - 0: 字符串相等时。
     *         - 1: 当第一个字符串大于第二个字符串时
     *         - -1: 当第一个字符串小于第二个字符串时
     */
    String hello = 'hello';
    String dart = 'dart';
    print(" hello 和 dart 比较:  ${hello.compareTo(dart)}");
    print(" dart 和 hello 比较:  ${dart.compareTo(hello)}");

    // 大小写转换
    print(str4.toUpperCase());
    print(str4.toLowerCase());

    // 截取字符串(开头索引和结尾索引)
    print(str4.substring(0, 3));
    // 只有开头索引，默认截取到最后
    print(str4.substring(1));

    // 拆分字符串
    // split(): 基于指定的分隔符将一个字符串分割成多个子字符串，并将结果放在一个数组中。
    // [This, is, my, favorite, language]
    var list = str4.split(" ");
    // [This is my , avorite language]
    print(str4.split(new RegExp(r'f')));


    print(str4.contains('This'));


    // 判断字符串是否以某个字符(字符串)开头，参数接受正则表达式
    print(str4.startsWith('This'));
    print(str4.startsWith('T'));
    print(str4.startsWith(new RegExp(r'[A-Z][a-z]'), 1));

    // 判断字符串是否以某个字符(字符串)结尾，参数不接受正则表达式
    print(str4.endsWith('e'));
    print(str4.endsWith('language'));


    // 根据指定的字符(字符串)获取其在原字符串中第一次出现的索引值, 顺序是从左到右
    const str2 = 'https://www.titanjun.top/';
    print(str2.indexOf('titan')); // 12
    print(str2.indexOf('t', 5));  // 12
    print(str2.indexOf(new RegExp(r'[a-z]'))); //0
    // 如果没有改字符, 则会输出-1
    print(str2.indexOf('ppp'));  // -1


    // 效果和indexOf一样, 不同点则是: indexOf的顺序是从左到右, lastIndexOf是从右到左
    print(str2.lastIndexOf('t', 20));  //14
    print(str2.indexOf(new RegExp(r'[a-z]'))); //0
    // 如果没有改字符, 则会输出-1
    print(str2.indexOf('ppp'));  // -1


    // 替换字符串
    const str5 = 'titanjun12--0123';
    print(str5.replaceFirst('t', 'T'));  // Titanjun12--0123
    print(str5.replaceFirst('12', '21', 10));   //titanjun12--0213

    // 全部替换
    print(str5.replaceAll('12', '21'));  //titanjun21--0213
    print(str5.replaceAll('t', 'T'));  //TiTanjun12--0123

    // 区间替换
    print(str5.replaceRange(0, 5, 'top'));  //topjun12--0123



    // 插值表达式
    // 在 Dart 中使用 $ 符号引用变量或者表达式
    int aa = 1;
    int bb = 2;
    print("aa + bb = ${aa + bb}");
    print("aa = $aa");  // aa = 1

    print("\n// " + "~" * 78);
    print('\n');


}