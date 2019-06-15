/**
 *  - 静态成员
 *      + 使用 static 关键字来实现类级别的变量和函数
 *      + 静态成员不能访问非静态成员，非静态成员可以访问静态成员
 *      + 类中的常量需要使用 static const 声明
 */

void main() {
    var page = new Page();
    page.scrollUp();
}

class Page{

    // 在类中声明一个常量
    static const int maxPage = 10;

    static int currentPage = 1;

    // 下滑
    // 添加 static 后变成静态方法，不能被实例的对象来访问
    static void scrollDown() {
        currentPage = 1;
        print("ScrollDown...");
    }

    // 上滑
    void scrollUp() {
        // 非静态成员可以访问静态成员
        currentPage++;
        print("ScrollUp...");
    }
}