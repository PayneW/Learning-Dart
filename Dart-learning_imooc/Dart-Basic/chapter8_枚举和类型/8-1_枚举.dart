/**
 * - 8-1 枚举
 *   + 枚举是一种有穷序列集的数据类型
 *   + 使用关键字 enum 定义一个枚举
 *      - enumerable [ɪ'njuːm(ə)rəb(ə)l] ~~~adj.可枚举的，可点数的
 *   + 常用用于代替常量，控制语句等
 * - Dart 枚举特性
 *   + index 从 0 开始，依次累加
 *   + 不能指定原始值
 *   + 不能添加方法
 */

//const spring = 0;
//const summer = 1;
//const autumn = 2;
//const winter = 3;

void main() {
    var currentSeason = Season.autumn;

    // index 从 0 开始，依次累加
    print(currentSeason.index);

    switch(currentSeason) {
        case Season.spring:
            print("1-3 月");
            break;
        case Season.summer:
            print("4-6 月");
            break;
        case Season.autumn:
            print("7-9 月");
            break;
        case Season.winter:
            print("10-12 月");
            break;
    }
}

// 这里的枚举 Season 就是为了替代上面定义的常量
// Q: 这个 Season 和 js 中的简写的对象字面量有什么不同？ A: 不知道。。。
enum Season {
    spring,
    summer,
    autumn,
    winter
}

