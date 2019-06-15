/**
 * - 6-7 初始化列表_x264
 *      + 初始化列表会在构造方法体执行前执行
 *      + 使用逗号分隔初始化表达式
 *      + 初始化列表常用于设置 final 变量的值
 */

void main() {
    Map map = {'address': 'ShenZhen', 'name': 'Devil'};
    var person = Person.withName(map);
}

class Person {
    String name;
    int age;
    final String address;

    // 初始化列表
    Person.withName(Map map): address = map['address'] {
        this.name = map['name'];
    }

}