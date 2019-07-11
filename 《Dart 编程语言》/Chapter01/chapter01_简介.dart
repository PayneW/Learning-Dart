/**
 * - 第 1 章: 简介
 *   +
 */

// 1.4 概述
// 一个 Dart 程序的执行总是开始于对 main() 函数的调用。每个函数都有函数头和函数体组成。
void main() {
  max(x, y) => (x > y) ? x : y;

  maxElement(lst) {
    var currentMax = lst.isEmpty ?
      throw 'Maximal element undefined for empty array' : lst[0];
    for (var i = 0; i < lst.length; i++) {
      // 把每个函数一次与 currentMax 进行比较。如果当前元素大于 currentMax, 那么我们就
      // 把它作为新的最大值赋值给 currentMax
      currentMax = max(lst[i], currentMax);
      print("currentMax: $currentMax");
    }
    return currentMax;
  }

  List nums = [1, 3, 6, 4, 8, 0];
  print(maxElement(nums));  // 8
}


