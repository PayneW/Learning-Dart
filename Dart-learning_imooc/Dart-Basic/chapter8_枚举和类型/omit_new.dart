/**
 * 省略 new
 */

void main() {
    // 实例化 Human
    // var human = Human();

    Human human = Human();
    human.gender = 'male';
    human.name = 'Jake';
    human.work();
}

class Human {
    String gender;
    String name;
    work() {
        print("my name is $name, I am $gender.");
    }
}