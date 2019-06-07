/**
 * 逻辑运算符: !、 &&、 ||
 *
 */
void main() {
    bool isTrue = true;
    bool isFalse = false;

    print(!isTrue); // false

    print(isTrue && isFalse);   // false
    print(isTrue || isFalse);   // true

    String str = "";
    print(str.isEmpty);    // true
    print(!str.isEmpty);    // false
}