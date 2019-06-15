/**
 * if 语句
 * for 循环 / for in 循环
 * while 语句 / do...while 语句
 */

void main() {
    int score = 90;
    if (score > 90) {
        print('优秀');
    } else if (score > 60) {
        print('良好');
    } else if (score == 60) {
        print('及格');
    } else {
        print('不及格');
    }

    int num = 5;
    /*for (var i=0; i < num; i++) {
        // 0 1 2 3 4
        // i++ 为后置递增，print() 执行完毕后才会 +1
        // (tips: Dart 这里的语法和 js 一样。Python 中只有 for...in 循环。)
        print(i);
    }*/

    print("*" * 79);

    int count = 0;
    while(count < 5) {
        // 数字转换为字符串: num.toString(). 和 js 中一样。
        // output: 0 ~ 4
        print("count++: " + (count++).toString());
    }

    print('~' * 40);

    do {
        print(count--);
    } while (count > 0 && count < 5);

}