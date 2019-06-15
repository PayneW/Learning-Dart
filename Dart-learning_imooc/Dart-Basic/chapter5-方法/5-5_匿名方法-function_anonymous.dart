/**
 * 5-5: 匿名方法
 */

void main() {

    /* js 中的匿名方法
     * (() => {
     *      console.log(1);
     * })()
     */

    // Dart 第一种匿名方法
    var func = (str) {
        print("Hello --- $str");
    };
    func(30);

    // 把匿名方法作为参数传递给其他方法
    var list2 = ['h', 'e', 'l', 'l', 'o'];
    print(listTimes(list2, (str){return str * 3;}));
}

List listTimes(List list, String times(str)) {
    for (var i = 0; i < list.length; i++) {
        list[i] = times(list[i]);
    }
    return list;
}