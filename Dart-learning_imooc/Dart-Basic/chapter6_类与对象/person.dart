class Person {
    String name;
    int age;
    // 使用 _ 表示库的私有性.
    // (添加了 _ 的 类名/属性名/方法名，在导入的文件内都访问不到，只在当前文件可以访问)
    int _age2;

    // 使用 final 声明的属性只有 getter 方法 (即: 只可读不可写)
    final String address = "Australia";

    void work() {
        print("Name is $name, Age is $age, He is working...");
    }
}