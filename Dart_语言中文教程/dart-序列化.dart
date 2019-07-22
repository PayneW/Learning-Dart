// - Dart -- JSON 和 序列化 (把对象序列化为字符串)

import 'dart:convert';

var json01 = {
  'name': 'John Smith',
  'email': 'john@example.com'
};

// encode 编码
var encoded = jsonEncode([1, 2 , {'a': null}]);

// decode 解码（把字符串转换为对象）
var decoded = jsonDecode('["foo", {"bar": 399}]');

main() {
  print('encoded: ${encoded}');

  // decoded: [foo, {bar: 399}]
  print('decoded: ${decoded}');
}










