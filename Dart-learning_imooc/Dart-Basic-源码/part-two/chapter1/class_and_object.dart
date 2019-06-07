import 'person.dart';

/**
 * @Author: 雷◕‿◕宇
 * @Description:
 * @Date: 2018/10/27
 */
void main() {
    var person = new Person();
    person.name = "Tom";
    person.age = 20;

    print(person.name);
    print(person.address);

    person.work();
}


