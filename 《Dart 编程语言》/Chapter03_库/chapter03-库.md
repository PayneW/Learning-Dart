## 第 3 章 -- 库
- **Dart 程序是由被称为库（library）的模块化单元组成的。**


> **3.1 顶层**
- 通常来说，一个库由多个顶层生命组成，这些声明可能定义了函数、变量及类型。
- **顶层变量和类变量一起被称为静态变量。**
- 一个实现了栈的库：
```dart
    library stack1;
    final _contents = []; // (1-0) (1-1)
    get isEmpty => _contents.isEmpty; // (2)
    get top => isEmpty ? throw 'Cannot get top of empty stack': contents.last;
    get pop => isEmpty ? throw 'Cannot pop empty stack' 
        : _contents.removeLast();
    push(e) {
      _contents.add(e);
      return e;
    }
    /**
     * - (1-0)、顶层变量 _contents，它被初始化为一个空列表。与实例变量和类变量一样，顶层
     * 变量
     *   引入了隐含的 accessor (访问器属性)。同样，用户的代码不会直接访问变量。顶层变量是
     *   延迟初始化的，与类变量一样，在它们的 getter 第 1 次被调用时才执行初始化。
     *   在 stack1 中，_contents 在某个访问它的方法被调用时才被设置为 [].
     * - (1-1)、与类变量一样，顶层变量也可以声明为 final，在这种情况下它们没有定义setter
     *   且必须在声明时就初始化。也可以把静态变量（可以是类或者库变量）声明为常量，那样的话
     *   它们就只能被赋予一个编译时常量且自身被视为不可变。
     * - (2)、顶层函数（常被称为库方法）的作用域规则与顶层变量一样，在整个库中都是可用的，它
     +   可以是 *普通函数*、*getter* 和 *setter*。
     * - 除了顶层函数和变量，我们也可以声明顶层类。在 Dart 中类声明都是顶层的，因为 Dart 
     *   不支持嵌套类。
     */    
```

> **3.2 脚本**
- 如果一个库没有 main() 函数，那么根据定义，它就不是一个脚本，自身也不能够被执行。
- 脚本还有另外一个特性。脚本的第 1 行以字符 `#` 号开头的一行纯文本。在某些环境下，这使得各种
  解释器能够根据文件头部以 `#` 号开头的指令来运行这个脚本。

> **3.3 隐私**
- 库是 Dart 的基础封装单元。以下划线 `_` 开头的成员都是库私有的，所在库之外的代码都无法访问。
```dart
    class CachingClass {
      var cache;
      operator [](i) {
        if (_cache[i] == null) {
          _cache[i] = complicatedFunction(i);
        } 
        return _cache[i];
      }
    }
    // CachingClass 所在库之外的代码都无法访问 _cache 字段。
```

> **3.4 导入**
- 我们通常也把库对外可用的对象称为库导出的命名空间。
```Dart
    import 'packages:stack1.dart' as stack1;
    import 'packages:stack2.dart' as stack2;

    /** 导入部分库 */
    // 只导入 pop, push
    import 'stack1.dart' show pop, push;
    // 导入除了 pop, push 之外的所有
    import 'stack1.dart' hide pop, push;

```

> **3.5 将库拆分为 part**
```Dart
    library ide;
    import 'dart:io' as io;
    import 'dart:mirrors' as mirrors;
    import 'dart: async' as async;
    // 还有更多： 如 UI 等，
    part 'browsing.dart';
    part 'inspecting.dart';
    part 'debugging.dart';
```
```Dart
    // 在 `browsing.dart` 文件的开头可能是这样的:
    part of ide;
    // 顶层声明
    class ClassBrowser ...
    ...
```

> **3.6 导出**
```dart
    library ideAPI;
    export 'browsing.dart' show AbstractBrowser, LibraryBrowser, ClassBrowser;
    export 'inspecting.dart' show ObjectInspector;
    export 'debugging.dart' show ThreadBrowser, ActivationBrowser;
```

> **3.7 钻石导入**

> **3.8 延迟加载**
```Dart
    import 'stack1.dart' deferred as stack1;
```

> **3.9 相关语言**