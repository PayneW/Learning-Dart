/**
 * Dart 方法:
 * - 方法定义
 *      + 返回类型 方法名 (参数1, 参数2, ...) {
 *          方法体...
 *          return 返回值
 *      }
 *
 * - 方法特性:
 *      + (1) 方法也是对象，并且有具体类型 Function
 *      + (2) 返回值类型、参数类型都可省略
 *      + (3) 箭头语句: => expr 是 {return expr;} 缩写。只适用一个表达式
 *
 * - 可选参数
 *      + (1) 可选命名参数: {key:value, key:value, ...}
 *      + (2) 可选位置参数: [param1, param2, ...]
 *      + (3) 如果存在具体参数，可选参数声明，必须在参数后面
 *
 * - 默认参数
 *      + 使用 = 在可选参数指定默认值
 *      + 默认值只能是编译时常量
 *
 */


// String(返回值类型)，参数类型(String, int) 都是可以省略的
String getPerson(String name, int age) {
    return  'name = $name, age= $age';
}


// 箭头语法 + 三目运算符
int gender = 1;
printPerson(name, age) => gender == 1 ? print("name= $name, age = $age") : "Test";



// 可选命名参数:
optionalParam(String name, {int age, String gender}) {
    print("name = $name, age = $age, gender = $gender");
}
// 可选位置参数:
optionalParam2(String name, [int age=2, String gender]) {
    print("name = $name, age = $age, gender = $gender");
}


// 可选参数的默认值
defaultPara(String name, {int age:30, String gender:'Female'}) {
    print("Default Parameters name = $name, age = $age, gender = $gender");
}


// 方法对象


// void 表示不需要返回类型
void main(List args) {
    // 此处打印 args 只是说明: Dart 中函数总是有一个形参列表 list (js 中函数的参数为数组)
    print(args);

    print(getPerson('张三', 18));

    printPerson('李四', 26);


    print('\n' + "*" * 76);
    // 可选命名参数
    // name = 王五, age = 20, gender = null
    optionalParam("王五", age: 20);
    optionalParam("王五2", age: 30, gender:'Male');

    print('\n' + "*" * 76);
    // 可选位置参数
    optionalParam2("小明");
    optionalParam2("小明", 16);
    optionalParam2("小明", 16, 'Male');


    print('\n' + "*" * 76);
    defaultPara('小红');
    defaultPara('小红', age: 36);
    defaultPara('小刚', age: 24, gender: 'Male');
}


