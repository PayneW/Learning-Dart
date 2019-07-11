/**
 * - 5-4: 方法对象
 *      + 方法可作为对象赋值给其他变量
 *      + 方法可作为参数传递给其他方法
 */

void main() {
    // 把 printHello 方法作为对象赋值给变量 func
    Function func = printHello;
    func();

    var list = [1, 2, 3, 4];
    // 把 printElement 作为参数传给给其他函数
    list.forEach(printElement);

    // 把方法作为参数传递给其他方法 -- 示例2
    var list2 = ['h', 'e', 'l', 'l', 'o'];
    print(listTimes(list2, times));
}

void printHello() {
    print('Hello');
}

void printElement(int element) {
    print(element);
}


List listTimes(List list, String times(str)) {
    for (var i = 0; i < list.length; i++) {
        list[i] = times(list[i]);
    }
    return list;
}

String times(str) => str * 3;
// String times(str) {
//     return str * 3;
// }