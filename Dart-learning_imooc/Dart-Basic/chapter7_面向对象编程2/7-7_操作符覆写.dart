/**
 * - 7-7 操作符覆写
 *   + 覆写操作符需要再类中定义
 *      - 返回类型  operator 操作符(parameter1, parameter1) {
 *          实现体...
 *          return 返回值
 *        }
 *   + 如果覆写 ==，还需要覆写对象的 hashCode getter 方法
 *
 * - 可覆写的操作符:
 *  |覆写操作符|覆写操作符|覆写操作符|覆写操作符|
 *  |:------:|:------:|:------:|:------:|
 *  | `<`  | `+` | `|` | `[]` |
 *  | `>`  | `/` | `^` | `[]=` |
 *  | `<=` | `~/` | `&` | `~` |
 *  | `>=` | `*` | `<<` | `==` |
 *  | `-`  | `%` | `>>` |      |
 */

void main() {
    var person1 = new Person(18);
    print("person1.age: " + (person1.age).toString());

    var person2 = new Person(20);
    print("person2.age: " + (person2.age).toString());

    print(person1 > person2);
}

class Person {
    int age;

    Person(this.age){
        print("Person constructor this.age: " + (this.age).toString());
    }

    // 定义 > 大于操作符
    // (Person person) 为多态: 把子类的实例赋值给父类的一个引用.
    // 这里还是没有明白
    bool operator >(Person person) {
        print("\nthis.age: " + (this.age).toString());

        print("person.age: " + (person.age).toString());
        return this.age > person.age;
    }

}