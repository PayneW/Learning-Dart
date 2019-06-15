 /**
  * 【 Dart 核心库提供了 List(列表)、Map(映射)、Set(集) 三种集合类型。】
  * List (列表) (tips:数组) 创建
  * - 常用创建(list)数组的方式:
  *      + 第1种: var list = [1, 2, 3]
  *      + 第2种创建不可见的 List: var list = const[1, 2, 3]
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

    var list1 = [1, 2, 3, "Dart", true];
    print(list1); // [1, 2, 3, Dart, true]
    print(list1[2]); // 3
    list1[1] = "Hello";
    list1.add('Python'); // [1, Hello, 3, Dart, true, Python]
    print(list1);

    // insert() 插入元素，第1个参数为要插入的位置，第2个参数为要插入的内容
    list1.insert(1, 'Java');

    // print(list1);

    // remove() 移除元素
    // list1.remove(list1[1]);

    // indexOf() 和 lastIndexOf() 都是查找元素，和js种一样
    if (list1.indexOf("Dart") > -1) {
        print("Yes, list1 hava Dart term");
    }

    // sort() 排序，用法也应该和 js 类似
    // tips: 现在这个数组可能式因为里面有 数字项/布尔项 所以不能用 sort() 排序
    // list1.sort();

    // sublist() 截取字串
    print(list1.sublist(3));    // [3, Dart, true, Python]

    // forEach() 用法应该也和 js 种的类似


    // 创建一个常量 list
    // var list2 = const [1, 3, 4, 5];
    // list2[2] = 111;
    // print(list2);
}

