/****** 数据类型 ******/

/**
 *【 Dart 核心库提供了 List(列表)、Map(映射)、Set(集) 三种集合类型。】
 * - Map 创建:
 *      + 创建 Map: var language = {'first': 'Dart', 'second': 'JavaScript'}
 *      + 创建不可变 Map: var language = const {'first': 'Dart', 'second': 'JavaScript'}
 *      + 构造创建: var language = new Map();
 *  > 常用操作:
 *      + [], map.length
 *      + map.isEmpty(), map.isNotEmpty()
 *      + map.keys, map.values
 *      + 映射是否包含指定键: map.containsKey()
 *      + 映射是否包含指定值: map.containsValue()
 *      + 删除指定键值对: map.remove(key)
 *      + map.forEach()
 *      + 添加其他键值对到映射中: map.addAll();
 *      + 删除所有键值对: map.clear()
 */

void main() {

    var map1 = {'first': 'Dart', 'second': 'JavaScript', 'true': 2};
    print(map1);
    print(map1['first']);   // Dart
    print(map1['true']);    // 2

    print('\n');
    print("*" * 79);
    print('\n');

    // 来源: https://caelumtian.github.io/2018/09/10/%E4%BB%8Ejs%E8%A7%92%E5%BA%A6%E7%9C%8Bdart/
    // Map 通常被称为 dictionary (字典) 或者 hash, map 是一个无序的 key-value (键-值) 对
    // map 中每个值都有一个对应的键便于访问。和 JavaScript 不同 Dart 对象不是 map.
    // Tips: 这里的 Map 并不像是简单的 js 的对象。如果你想访问属性建议使用 [] 的方式，例如：
    // map["a"]。不要使用 . 的方式 (在 Map 作为参数的时候会报错);

    Map<String, int> map = {'a': 1, 'b': 2, 'c': 3};

    // 返回映射的哈希码: 哈希值是随机生成的一组数字，至少 8 位
    print(map.hashCode);

    // 3
    print(map.length);

    //false
    print(map.isEmpty);
    // (a, b, c)
    print(map.keys);

    // (1, 2, 3)
    print(map.values);
    // _InternalLinkedHashMap<String, int>
    print(map.runtimeType);
    print(" ");

    // 按顺序迭代映射
    map.forEach((key, value) {
       // print(key + " : " + value.toString());
       print("key=$key, value=$value");
    });
    // 添加其他键值对到映射中
    map.addAll({'d': 4, 'e': 5});

    // 映射是否包含指定键
    map.containsKey('d');

    // 映射是否包含指定值
    map.containsValue(5);

    // 删除指定键值对
    map.remove('a');

    // 删除所有键值对
    map.clear();

    var list = ['aa', 'bb', 'cc'];
    // {0: aa, 1: bb, 2: cc}
    print(list.asMap());

}