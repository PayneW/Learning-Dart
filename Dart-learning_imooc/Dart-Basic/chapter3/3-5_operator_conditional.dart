/**
 * - 条件表达式:
 *   + 三目运算符: condition ? expr1 : expr2
 *   + ?? 运算符: expr1 ?? expr2
 * */

void main() {
    int gender = 0;
    String str = gender == 0 ? 'Male = $gender' : 'Female = $gender';
    print(str); // Male = 0

    String a;
    String b = 'JavaScript';
    // 如果左边的值为空，那就就使用右边的值
    String c = a ?? b;
    print(c);
}