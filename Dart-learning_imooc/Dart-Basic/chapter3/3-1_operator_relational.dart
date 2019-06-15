/**
 * - 关系运算符: ==、!=、>、<、>=、<=
 * - 判断内容是否相同使用 ==
 */

void main() {
    int a = 6;
    int b = 3;

    print(a == b);  // false
    print(a != b);  // true
    print(a > b);   // true
    print(a < b);   // false
    print(a >= b);  // true
    print(a <= b);  // false

    String strA = "123";
    String strB = "123";
    print(strA == strB);    // true
}