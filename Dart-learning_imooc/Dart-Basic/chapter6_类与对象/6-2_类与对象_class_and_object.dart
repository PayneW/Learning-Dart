/**
 * - 6-2 类与对象
 *      + 使用关键字 class 声明一个类
 *      + 使用关键字 new 创建一个对象， new 可以省略
 *      + **所有对象都继承于 Object 类**
 *
 * - 属性与方法
 *      + 属性默认会生成 getter 和 setter 方法
 *      + 使用 final 声明的属性只有 getter 方法 (即: 只可读不可写)
 *      + 属性和方法通过 . 访问
 *      + 方法不能被重载(即: 重复定义一个方法)
 *
 * - 类及成员可见性
 *      + Dart 中的可见性以 library (库) 为单位
 *      + 默认情况下，每个 Dart 文件就是一个库
 *      + 使用 _ 表示库的私有性
 *      + 使用 import 导入库
 */

import "person.dart";

void main() {
    var person = new Person();
    person.name = "Jake";
    person.age = 40;

    // 即这里不能给 final 声明的属性赋值
    // person.address = 'China';

    // Australia
    print(person.address);

    print(person.name);
    person.work();

}