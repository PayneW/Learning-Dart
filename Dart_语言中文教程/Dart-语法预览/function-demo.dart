/// 返回一个函数，该函数会添加 "addBy" 到
/// 这个函数的参数上并返回
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

void main() {
  // 创建一个加2的函数
  var add2 = makeAdder(2);
  // 创建一个加4的函数
  var add4 = makeAdder(4);


  assert(add2(3) == 5);
  print(add2(3));
  assert(add4(3) == 7);
}
