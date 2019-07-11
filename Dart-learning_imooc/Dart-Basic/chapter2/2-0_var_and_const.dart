/**
 * 变量和常量
 */

void main() {
    var star = '*' * 36;
    print(star + '变量_Start' + star);

    /** - 1-1、变量 - 弱类型 */
    // + (1)、声明变量，不赋初始值
    var a;
    a = 'Hello';
    a = 123;
    a = false;
    // 在不初始化的前提下，变量可以赋值任何类型的值
    print(a);

    // + (2)、声明变量，赋初始值
    var b = "Hello Dart!";
    // 变量在有初始化值得情况下，只能赋值相同类型得值，否则报错
    // b = 123;

    // + (3)、dynamic 声明
    dynamic c = 'Come on!';
    c = 124;
    c = false;
    print(c);
    // 调用未声明的方法不会报错，运行时报错
    // c.test();

    // + (4)、Object
    Object d = "Object 类型变量";
    d = 123;
    d = false;
    // 调用未声明得方法，会直接报错
    // d.test();


    /** - 1-2、变量 - 强类型 */
    // + (1)、确定指定变量得类型
    String str = 'Hello handsome!';
    bool isStr = true;
    num number = 12434;

    // + (2)、未初始化变量值为null, 即便是数字也是 null
    bool isNum;
    String str2;
    StringBuffer str3;
    num num1;
    print([isNum, str2, str3, num1]);

     print(star + '变量_Over' + star);

    /** 2、常量 */
    // 1、定义常量，类型声明可以省略
    final String a1 = '';
    final b1 = 'puppy';
    const String a2 = 'puppy';
    const b2 = 'puppy';

    // 初始后不能再赋值，否则报错
    final a3 = 'puppy';
    const a4 = 'puppy';
    // a3 = 'abc';
    // a4 = 'def';

    // final 和 const 不能和 var 同时使用，否则报错
    // final var a5 = 'puppy';
    // const var a6 = 'puppy';


    // 2-1、final 和 const 的区别: final 是运行时判断，const 为赋值时判断
    final time1 = DateTime.now();
    // const 会报错
    // const time2 = DateTime.now();


    // 2-2、final 不可变但可传递。 const 后定义的变量为常量，不能更改。
    final List ls = [11, 13, 15];
    // final 修饰的数组可以改变元素值
    ls[1] = 44;
    print(ls);  // [11, 44, 15]

    const List ls1 = [11, 44, 15];
    // const  后定义的变量为常量，不能更改
    // ls1 = [45];


    // 2-3、内存中重复创建
    final arr1 = [11, 22];
    final arr2 = [11, 22];
    // 判断是否是相同内存
    // identical [aɪ'dentɪk(ə)l] ~~~adj.相同的，一致的
    print(identical(arr1, arr2));    // false

    // const 修饰的常量，再内存中不会重复创建相同的常量。
    // tip: 也就是说相同的常量不会多次创建，所以 ls3 == ls4
    const ls3 = [11, 22];
    const ls4 = [11, 22];
    print(identical(ls3, ls4));     // true


}