 /**
  * 【 Dart 核心库提供了 List(列表)、Map(映射)、Set(集) 三种集合类型。】
  * # List (列表) (tips:数组) 创建
  * - 常用创建(list)数组的方式:
  *      + 第1种: var list = [1, 2, 3]
  *      + 第2种创建不可变的 List: var list = const[1, 2, 3]
  *      + 第3种, 构造创建: var list = new List();
  * - 常用操作 (tips: 内置方法比 js 只多不少)
  *      + [], length
  *      + add(), insert()
  *      + remove(), clear()
  *      + indexOf(), lastIndexOf()
  *      + sort(), sublist()
  *      + shuffle(), asMap(), forEach()
  */

void main() {

    /** 20190617 更新内容 */

    // 创建一个固定长度列表: 固定长度列表的长度在运行时不能改变。任何调整列表大小的尝试都将
    // 导致异常。
    var lst = new List(3);
    lst[0] = 12;
    lst[1] = 13;
    lst[2] = 11;
    print("lst: $lst");


     // 创建一个常量 list
    var list2 = const [1, 3, 4, 5];
    // 不能更改
    // list2[2] = 111;
    // print(list2);


    // 创建可增长长的列表
    var growable_list1= new List();
    var growable_list2 = [1, 3, 4];


    // List.filled(): 为所有元素统一赋值, 第一个参数为创建列表的长度，第二个参数为值
    var l3 = new List.filled(2, []);    // [[], []]
    print("l3[0]: ${l3[0]}");   // l3[0]: []
    // l3[0].add(12);
    // 不明白为什么这里 l3[0].add() 把每一个子项里都填充了 12
    // print(l3);  // [[12], [12]]


    var l5 = new List.from([1, 3, 4, 6]);
    l5.add(5);
    print("l5: ${l5}"); // l5: [1, 3, 4, 6, 5]

    // 下面的 add 方法会报错
    var l51 = new List.from([1, 3, 5, 7], growable: false);
    // l51.add(51);


    /* 相关属性 */
    var arr1 = [1, 3, 6, 7, 9];
    // 数组的第一个和最后一个元素
    print("arr1.first: ${arr1.first}");
    print("arr1.last: ${arr1.last}");

    // 判断数组是否为空
    print("arr1.isEmpty: ${arr1.isEmpty}");
    print("arr1.isNotEmpty: ${arr1.isNotEmpty}");

    // 数组长度
    print(arr1.length);

    // 倒序返回 List
    print("arr1.reversed: ${arr1.reversed}");

    // 返回 Iterator, 被允许迭代 Iterable 的所有元素
    print(arr1.iterator);

    // 对象的运行时类型
    print("arr1.runtimeType: ${arr1.runtimeType}");

    // 获取对象的哈希值
    print(arr1.hashCode);

    // 根据索引获取元素
    print(arr1[2]);

    // 根据索引修改元素
    arr1[1] = 11;
    print(arr1);


    /* 相关方法 */
    // 添加元素
    arr1.add(5);
    // 添加一个数组
    arr1.addAll([10, 12]);
    print('arr1: ' + arr1.toString());

    var arr2 = ['one', 'two', 'three', 'four', 'five', 'six'];

    // 列表是否包含某个元素
    if (arr2.contains('four')) {
        print("Yes have four item");
    }

    // tips: js 中的迭代方法有 every()/filter()/forEach()/map()/some()

    var filter = (item) {
        return item.length > 4;
    };
    // 判断数组是否有满足条件的元素，类似于 js 中的 some()
    // print(arr2.any((item) {
    //     return item.length > 4;
    // }));
    // 上面注释的简写，判断 arr2 中的项有没有长度大于 4 的。
    print(arr2.any((item) => item.length > 4));

}

