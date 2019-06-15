/**
 * Dart 中的箭头函数
 */

// 我们看下 Dart 官网的说明, 具体如下:
void main() {
    // isNoble(atomicNumber) {
    //     return _nobleGases[atomicNumber] != null;
    // }

    // 对于上面只包含一个表达式的方法，你可以使用简写语法:
    // 🔺: Dart 中的箭头函数: 方法体只包含一个表达式时，可使用箭头表达式语法进行简写。
    // bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

    // 因为 Dart 中的箭头表达式值支持单行表达式，所以想 if 声明，这样的条件表达式只能使用
    // 匿名函数语法
    List<int> list = [1, 3, 5, 7, 9, 11, 13, 15];
    list.forEach((num) {
       if (num % 2 == 0) {
           print('num: $num');
       }
    });

    // 但是上面的 Dart 这种匿名语法的写法在 js 中可以用箭头函数表示
    // var list = [1, 3, 5, 7, 9, 11, 13, 15];
    // list.forEach((num) => {
    //     if (num % 2 == 0) {
    //         console.log('num:' + num);
    //     }
    // })
}