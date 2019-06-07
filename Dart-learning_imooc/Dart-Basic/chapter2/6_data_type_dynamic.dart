/**
 * 动态类型 dynamic
 */
void main() {
    var a;
    a = 10;
    a = "Dart";

    dynamic b = 20;
    b = "JavaScript";

    var list = new List<dynamic>();
    list.add(1);
    list.add('Hello');
    list.add('true');
    print(list);
}