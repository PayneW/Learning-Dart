/**
 * # 此讲解来自: <Dart 语言中文教程>--github
 * - Sets: Dart 中的 set 是无序且唯一的元素集合。(tips: 这里和 Python 中是一样的)
 *      Dart 通过 set 字面量和 Set 类型来支持 set.
 * > 版本说明: 尽管 Set 类型一直是 Dart 核心的一部分，set 字面量却是 Dart 2.2 中新引入的。
 *
 */

void main() {
    // 要创建一个空的 set, 使用 {} 并提供一个类型参数，或者使用 {} 指向带类型的 Set:
    var names = <String>{};
    // 下面这种方式也可以
    // Set<String> names = {};

    // 此为创建一个 map 而不是 set。 因为 map 字面量的优先级更高，{} 默认表示 Map 类型。
    var namesMap = {};

    // 使用字面量创建一个 Dart set: Dart 推断 fruits 的类型位 Set<String>。
    Set fruits = {'orange', 'apple', 'banana', 'watermelon', 'pear'};

    // 使用 add() / addAll() 来向已存在的 set 中添加元素:
    fruits.add('cherry');

    var elements = {'peach', 'strawbarry'};
    fruits.addAll(elements);

    // 使用 .length 来获取 set 中元素的数量:
    print(fruits.length);   // 8

    print(fruits);

    // 要创建一个 set 作为编译器常量，在 set 字面量前使用 const
    final constantSet = const {'orange', 'apple', 'banana', 'pear'};

    // 对于 Dart 2.3, set 支持扩展运算符 (... 和 ...?) 还有集合 if 和 集合 for。
    // 要了解更多关于 set 得信息，请参阅 泛型 和 Set.

}