/**
 * - 数据类型 Number:
 *   + num
 *   + int
 *   + double
 */

void main() {
    num a = 10;
    a = 12.5;
    // print(a);  // 12.5

    int b = 20;
    // b = 20.4;

    double c = 10.5;

    print(b + c);   // 30.5
    print(b - c);
    print(b * c);
    print(b / c);

    // 取整
    print(b ~/ c);

    // 求模(余)
    print(b % c);   // 20/10.5 余数 9.5

    // NaN
    print(0.0 / 0.0);

    print(b.isEven);

    // - odd [ɒd/] adj.奇数的
    print(b.isOdd);

    int d = 11;
    print(d.isEven);
    print(d.isOdd);

    int e = -100;
    // 绝对值
    print(e.abs());

    double f = 10.5;
    // 11
    print(f.round());
    // 向下取整 (和 js 中一样)
    print(f.floor());
    // 向上取整
    print(f.ceil());

    // 10
    print(f.toInt());
    // 11.0
    print(d.toDouble());

    /* 数字转换为字符串 */
    // 2
    print(2.toString());
    // 2.543433
    print(2.543433.toString());
    // 2.53 保留位小数
    print(2.53434.toStringAsFixed(2));
    // 科学计数法 2.53e+0
    print(2.53434.toStringAsExponential(2));
    // 2.5343330
    print(2.534333.toStringAsPrecision(8));


    /* 字符串转数字 */
    print(int.parse('1'));
    print(double.parse('2.0'));
}