# [Dart语法预览，最后确定用 github 这个翻译](https://github.com/konieshadow/dart-tour#%E5%87%BD%E6%95%B0)
- 实际上看的时候是和官网的文档结合看的。

### 在学习 Dart 语言之前，请牢记下面一些事实和概念(重要概念 Important concepts):
- (1)、所有能够使用变量引用的都是对象，每个对象都是一个类的实例。每一个数值、函数和 null 
  都是对象。所有的对象都继承自 `Object` 类。
- (2)、尽管 Dart 是强类型的，但是 Dart 支持类型推断所以类型声明是可选的。调试代码时没有
  指定类型的变量的类型为 `dynamic`.
- (3)、Dart 中的类和接口是统一的，类即接口，你可以继承一个类，也可以实现一个类(接口)，自然
  包含良好的面向对象和并发编程的支持。
- (4)、Dart 支持泛型，像是 `List<int>`（包含整数的列表）或者 `List<dynamic>`（一个包含
  任意类型对象的列表）。除了绑定在类和对象上的函数（分别为静态(类)方法和实例方法）以外，Dart
  还支持顶层函数（e.g.: main())。你还可以在函数中创建函数（嵌套函数或局部函数）
- (6)、不想 Java, Dart 没有 `public`, `protected` 和 `private` 关键字。 如果一个
  标识符以 `_` 开头，则该标识符在库内时私有的。详情请参考: 库和可见性。
- (7)、标识符可以以下划线 `_` 开头，后面跟上任意字母和数字的组合。
- (8)、Dart 既有 `表达式(expression)`（具有运行时的值）也有 `语句(statement)`（没有运
  行时的值）。例如：条件表达式 `condition? expr1 : expr2` 有 expr1 或 expr2 的值。
  相对的一个 if-else 语句，是没有值得。一个语句经常包含一个或多个表达式，但是一个表达式不能
  直接包含一个语句。
- (9)、Dart 开发工具会报告 2 种类型的问题："警告" 和 "错误"。  


### 注释
- Dart 的注释分 3 种: 单行注释、多行注释、文档注释。
    + 单行注释: `// comment`       
    + 多行行注释: `/* comments */`       
    + 文档注释注释: `///` 或者 `/** */`
   

### 关键词
- 下面的表格列出了 Dart 语言特殊对待的关键词。避免使用这些单词作为标识符。


### 变量


### 默认值
- 未初始化的变量有一个初始值 null。即使是数值类型的变量初始值也是 null，因为数值 -- 和 
  Dart 中其他类型一样都是对象。
  ```dart
    main() {
      int lineCount;
      if (lineCount == null) {
        print("Default value is null");
      }
    }
  ```

### Final 和 const
- 如果你不打算改变一个变量，请使用 final 和 const。 Final 变量只可以被设置一次，
  const 变量是编译期常量。（const 变量是隐士 final 的。） 一个 final 的顶层变量或者
  类变量在首次使用时被初始化。 Tip: 实例变量只可以是 final 的，不可以是 const 的。 
  Final 实例变量必须在构造函数体开始前被初始化 —— 在变量声明时、通过构造函数参数或者在
  构造函数的 初始化列表 中。
    ```dart
        main() {
          final name = 'Bob'; // 没有使用类型声明
          final String nickname = 'Boddy';  // 使用类型声明
          
          const bar = 1000000;  // 压力单位 (达因/cm2)
          const double atm = 1.01325 * bar; // 标准大气压
        }
    ```
- const 关键词不仅可以声明常量。还可以使用它创建常量值，也可以声明创建常量值得构造函数。
  任何变量都可以拥有一个常量值。
   ```dart
        main() {
          var foo = const [];
          final bar = const [];
          const baz = [];   // 等同于 `const []` 
          
          const primaryColors = [
            Color('red', [255, 0, 0]),
            Color('green', [0, 255, 0]),
            Color('blue', [0, 0, 255]),
          ];
        }
   ```


### 分号: 在 Dart 中，用分号来结束语句是必须的，不加分号会报错。


### Built-in types (内置类型)
- **Numbers (数值)**: Dart 支持 2 种类型的数字
    - int: 整数值，其取值通常位于 -2^53 和 2^53 之间
    - double: 64-bit (双精度) 浮点数，符合 IEEE 754 标准。 
- **Strings (字符串)**
    + ```
         var val = "数据类型是 String";
         // Dart 判断数据类型
         if (val is String) {}
      ```
- **Booleans (布尔值)**: 为了表示布尔值，Dart 内置了一个名字为 bool 的类型。只有 2 个
  对象拥有布尔类型： 布尔字面量 true 和 false，它们两个都是编译其常量。
- **Lists (列表)** (也被称为 Arrays)
- **Sets (集合)** ：Dart 中的 set 是无需且唯一的元素集合。
- **Maps (映射)**: 通常来说 Map 是一个关联了键和值的对象。
- **Runes**: runes 代表字符串中的 UTF-32 code points. Unicode 为每一个字符、标点符号、表情
  符号等都定义了一个唯一的数值。由于 Dart 字符串是 UTF-16 code units 字符序列，所以在
  字符串中表达 32-bit Unicode 值就需要新的语法了。
- **Symbols**: 一个 Symbol object 代表 Dart 程序中声明的操作符或者标识符。

    
## 函数 (Function): 拥有一个类型 `Function`。

#### 参数
- **默认参数**
- **main（）**
    + 每个应用都有一个顶级的 main() 函数作为这个应用的入口。 
- **可选命名参数**
- **可选位置参数**
```dart
    main() {
      // 可选命名参数
      optionalParam("WANG", age: 30);
      optionalParam("WANG", age:30, gender: "Male");
     
      // 可选位置参数
      optionalParam2("LI");
      optionalParam2("LI", 16);
      optionalParam2("LI", 16, "Male");
    } 
    
    // 可选命名参数:
    optionalParam(String name, {int age, String gender}) {
        print("name = $name, age = $age, gender = $gender");
    }
    // 可选位置参数:
    optionalParam2(String name, [int age=2, String gender]) {
        print("name = $name, age = $age, gender = $gender");
    }
```

#### 函数作为一等对象
- 函数可以作为对象赋值给其他变量
- 函数可以作为参数传递给其他方法
```dart
    void printElement(int element) {
      print(element);
    }
    
    List listTimes(List list, String times(str)) {
      for(var i = 0; i < list.length; i++) {
        list[i] = times(list[i]);
      }
    }
    
    String times(str) {
      return str * 3;
    }
    
    main() {
      var list = [1, 3, 5];
      // 把 printElement 作为参数传递给对其他函数
      list.forEach(printElement);
      
      // 把函数作为参数传递给其他方法
      var list2 = ['h', 'e', 'l', 'l', 'o'];
      print(listTimes(lsit2, times));
    }
```

#### 匿名函数
```dart
    List listTimes(List list, String times(str)) {
        for (var i = 0; i < list.length; i++) {
            list[i] = times(list[i]);
        }
        return list;
    }
    
    // 这种写法明显好于上面传入 2 个参数，上面只是用于演示把匿名函数当作参数传递
    List listTimes2(List list) {
        var filter = (str){
            return str * 3;
        };
        for (var i = 0; i < list.length; i++) {
            list[i] = filter(list[i]);
        }
        return list;
    }

    void main() {
    
        /* js 中的匿名方法
         * (() => {
         *      console.log(1);
         * })()
         */
        
        // tip: 为了对比匿名函数，这里写出 Dart 中的箭头函数
        // Dart 中的箭头函数: 方法体只包含一个表达式时，可使用箭头表达式语法进行简写。
        // bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
    
        // Dart 第一种匿名方法
        var func = (str) {
            print("Hello --- $str");
        };
        func(30);
    
    
        // 把匿名方法作为参数传递给其他方法
        var list2 = ['h', 'e', 'l', 'l', 'o'];
        print(listTimes(list2, (str){return str * 3;}));
    
        // print(listTimes2(list2));
    
    }
    
```

#### 词法作用域
- Dart 是词法作用域语言，这意味着变量的作用域是静态确定的，简单地通过代码的布局来确定。你可以 
  "沿着花括号往外走" 来判断一个变量是否在作用域中。
```dart
    // 下面是一个嵌套函数的例子，它包含了各个层级的作用域中的变量：
    bool topLevel = true;
    void main() {
      var insideMain = true;
      
      void myFunction() {
        var insideFunction = true;
        
        void nestedFunction() {
          var insideNestedFunction = true;
          print("topLevel $topLevel");
          print("insideMain $insideMain");
          print("insideFunction $insideFunction");
          print("insideNestedFunction $insideNestedFunction"); 
        }
      }
    }
```

#### 词法闭包
- "闭包"指可以访问词法作用域中变量的一个函数对象，即使这个函数是在它原本作用域的外部被使用。
  函数可以捕获定义在它周围作用域中的变量。在下面的例子中，makeAdder() 捕获了变量 addBy,
  无论返回的函数到哪，它都记得 addBy。
  ```dart
      // 返回一个函数，该函数会添加 'addBy' 到这个函数的参数的参数上并返回
      Funtcion makeAdder(num addBy) {
        return (num i) => addBy + i;
      }
    
      void main() {
        // 这不就是先调用 makeAdder(2) 函数传入一个 2 然后返回一个匿名函数放到
        // 全局环境中吗？当然也可以说是闭包。
        var add2 = makeAdder(2);
        // 创建一个加 4 的函数
        var add4 = makeAdder(4);
        print("add2(3): ${add2(3)}");
        print("add4(3): ${add4(3)}");
      }
  ```


## 运算符
- 所有内容略......


## 流控制语句
- 所有内容略......


## 异常
- 所有内容略......


## 类
#### 使用类成员
#### 使用构造函数
#### 获取对象类型
#### 实例变量
#### 构造函数
#### 方法
#### 抽象类
#### 隐式接口
#### 继承类
#### 重写类成员
#### 枚举方法
#### 为类添加特性：混入
#### 类变量和方法


## 泛型
#### 为什么用泛型？
#### 使用集合字面量
#### 在构造函数中使用参数类型
#### 泛型集合和他们包含的类型
#### 限制参数类型
#### 使用泛型方法


## 库和可见性
#### 使用库
#### 实现库


## 异步支持
#### 处理 Futures
#### 声明异步函数
#### 处理 Streams


## 生成器

## 可被调用的类

## Isolates

## Typedefs

## 元数据


## 注释
- 单行注释
- 多行注释
- 文档注释

## 总结

## 译者总结
