// 我们默认使用的导入方式。 我们通常把库对外可用的对象称为库导出的命名空间。
/**
 * - 指定库前缀: 如果导入两个库是由冲突的标识符，那么可以通过 as 指定一个或两个库的前缀。
 */
import 'stack1.dart' as stack1;
import 'stack2.dart' as stack2;

/** 导入部分库 */
// 只导入 pop, push
// import 'stack1.dart' show pop, push;
// 导入除了 pop, push 之外的所有
// import 'stack1.dart' hide pop, push;


// 真正演进的代码需要更多的规范，通常情况下我们会这样写: (tip: 不知道什么原因这种写法不对。)
// import 'package:stack1.dart';

main() {
    stack1.push('gently');
    stack1.push('harder');
    print(stack1.pop);
    print(stack1.top);

    print('\n' + '*' * 66 + '\n');

    // 测试 stack2
    stack2.push('gently');
    stack2.push('harder');
    print(stack2.pop);
    print(stack2.top);
}
