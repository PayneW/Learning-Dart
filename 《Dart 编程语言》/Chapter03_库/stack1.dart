/**
 * 3.1 顶层
 *   - 顶层变量和类变量一起被称为静态变量
 */

library stack1;

// 以下划线开头的成员是库私有的。
final _contents = [];

get isEmpty => _contents.isEmpty;
get top => isEmpty ? throw 'Cannot get top of empty stack 无法获得空堆栈的顶部'
    : _contents.last;
get pop => isEmpty ? throw 'Cannot pop empty stack 无法弹出空堆栈'
    : _contents.removeLast();

push(e) {
    _contents.add(e);
    print(_contents);
    return e;
}