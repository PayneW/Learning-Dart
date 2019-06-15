/**
 * - 8-2 泛型
 *   + Dart 中类型是可选的，可使用泛型限定类型
 * - 泛型的使用
 *   + 类的泛型
 *   +
 */

void main() {
    var list = new List<int>();
    list.add(1);
    // print(list);

    var utils = new Utils<int>();
    utils.put(1);
}

class Utils<T> {
    T element;

    void put(T element) {
        this.element = element;
        print(this.element);
    }
}