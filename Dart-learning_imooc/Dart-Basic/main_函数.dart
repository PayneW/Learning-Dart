// 20190512

/**
 * - main 函数: 每个应用都必须有一个顶级函数 main(), 这个函数就是整个应用的入口函数。
 *   main() 函数返回值类型为 void 并且有一个可选参数 List, 这点也是和 js 完全不同的。
 */
void main() {
    var pi = double.parse("3.1415926");
    var piFixed = pi.toStringAsFixed(2);

    // 3.14
    print(piFixed);

}
