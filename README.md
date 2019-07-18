# Learning-Dart  --  Dart 学习
- [Dart 中文网站](http://dart.goodev.org/)


## 安装 Dart
- [安装 Dart](http://dart.goodev.org/install)
- Windows 平台有 2 种方式:
    - 1、[利用 chocolatey 安装:](http://dart.goodev.org/install/windows#chocolatey)
        + 安装 Chocolatey
            - A)、以 "管理员" 身份运行 Run 窗口: 首先用 `win + R` 快捷键打开 "Run" 窗口，
                然后输入 `cmd` 接着按下 Ctrl + Shift + Enter 就是以管理员身份运行了。
                (tips: 注意左上角会有"管理员"字体提示，来源: `https://www.howtogeek.com/194041/how-to-open-the-command-prompt-as-administrator-in-windows-8.1/`)
            - B)、在上面以管理员身份打开的 Run 窗口中粘贴段代码运行:
                + `@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"`
                + 安装完毕输入: choco -v 就可以查看版本号是否安装成功了。
        + 利用安装好的 Chocolatey 安装 Dart
            - 提前打开 vpn 因为 dart-sdk 存放在 google 的服务器上，不翻墙即使使用 Chocolatey 也无法下载
            - 安装 dart-sdk: choco install dart-sdk -version<version> (tips: -version 是特定的版本不需要就不用写)
            - 安装中间会提示 Do you want to run the script? 输入 Y
            - 接着就会下载 dart-sdk, dart-sdk 安装包提示有 140M 左右 (tips: 出现红字代表安装失败，重试两次)
            - 安装 dartium(如果开发 Web 应用，还需要下载 Dartium) : choco install dartium -version<version>
            - dartium 安装包有 74M 左右
        + 在 webstorm 中加载 dart-sdk 的路径: C:\tools\dart-sdk
    - 2、[下载安装包直接安装](http://www.gekorm.com/dart-windows/) 建议使用 chocolatey 安装，
        因为这种方法在安装时要联网下载，总是不成功。
- Mac 平台安装方式：
    - 1、首先安装 Homebrew，然后使用 Homebrew 安装 Dart


- **effective /ɪ'fektɪv/** adj.有效的，起作用的
    + --> These are effective measures. 这些都是有效的措施。
    + --> This is an effective medium. 这是一种有效手段。
    + --> Well, because they can be quite effective. 因为，他们可以非常有效。

# Dart 文档官网提示是建议 2 个空格，但自己的习惯是和 javascript 代码保持一致使用 4 个空格。
- **effective /ɪ'fektɪv/ ~~~adj.有效的，生效的，事实上的**
    + --> These are effective measures. 这些都是有效的措施。
    
    
## [Effective Dart: 代码风格](http://dart.goodev.org/guides/language/effective-dart/style#uppercamelcase-)

- **标识符**: 所谓标识符，就是指变量、函数、属性的名字，或者函数的参数. (此句来自《js高程》)。
    + UpperCamelCase: 大驼峰式
        - Classes           (类名字)
        - enums             (枚举类型) 
            + [- enumerable /ɪ'njuːm(ə)rəb(ə)l/ adj.可枚举的，可列举的]
        - typedefs          (类型定义)
        - type parameters   (类型参数)

    + lowerCamelCase: 标识符采用(小)驼峰格式，也就是第一个字母小写，剩下的每个单词的首字母大写
        - 要 使用 lowerCamelCase 风格来命名其他的标识符.
          类成员变量、顶级定义（变量、函数等）、变量、参数以及命名参数等都应该 使用 
          lowerCamelCase 这种类型的命名风格。
          ```dart
            var item;

            HttpRequest httpRequest;

            align(clearItems) {
                // ...
            }
          ```
        - 推荐 使用 lowerCamelCase 来命名常量。
          ```dart
            const pi = 3.14;
            const defaultTimeout = 1000;
            final urlScheme = new RegExp('^([a-z]+):');

            class Dice {
                static final numberGenerator = new Random();
            }
          ```

    + lowercase_with_underscores
        - 使用 lowercase_with_underscores 风格来命名库和文件名名字。由于某些文件系统不区分大小写，所以很多项目都要求
          文件名必须为小写字母。 通过分隔符分开单词可以保证名字的可读性。使用下划线作为分隔符确保名字为 合法的 Dart 标识符，
          如果将来支持符号导入的话 文件名必须要为合法的标识符， 这样就不用将来再修改文件名了。
          ```dart
            library peg_parser.source_scanner;

            import 'file_syttem.dart';
            import 'slider_menu.dart';
          ```
        - 要 使用 lowercase_with_underscores 风格命名导入的前缀。
          ```dart
            import 'dart.json' as json;
            import 'dart:math' as math;
            import 'package:javascript_utils/javascript_utils.dart' as js_utils;
            import 'pacakge:js/js.dart' as js;
          ```
    + 要把超过两个字母的缩略词和首字母缩略词当做一般单词来对待。
        - 首字母缩略词都大写比较难以阅读，特别是多个首字母缩略词连在一起的时候。 例如 HTTPSFTPConnection、这种情况下你根本
          不知道到底是 HTTPS FTP 链接还是 HTTP SFTP 链接。
          为了避免这种情况，把超过两个字母的缩略词和首字母缩略词当做一般单词来对待。 (两个字符的 缩写 要和普通单词一样对待，例如
           ID 和 Mr. 只首字母大写，第二个字母小写。)
          ```dart in html
            HttpConnection
            uiHandler
            IOStream
            HttpRequest
            Id
            DB
          ```
- **顺序**: 为了保证代码文件前面部分的整洁，我们规定了每个部分出现的顺序。 每个部分之间通过空行来分割。
    - 要 把 “dart:” 导入语句放到其他导入语句之前。
      ```dart
        import 'dart:async';
        import 'dart:html';

        import 'package:bar/bar.dart';
        import 'package:foo/foo.dart';
      ```

    - 要 把 “package:” 导入语句放到相对导入语句之前。
      ```dart
        import 'package:bar/bar.dart';
        import 'package:foo/foo.dart';

        import 'a.dart';
      ```

    - 推荐 把”第三方” “package:” 导入语句放到其他语句之前。
      ```dart
        import 'package:bar/bar.dart';
        import 'package:foo/foo.dart';

        import 'package:myapp/io.dart';
        import 'package:myapp/util.dart';
      ```

    - 要 把导出（export）语句放到所有导入语句之后的部分。
      ```dart
        import 'src/error.dart';
        import 'src/string_source.dart';

        export 'src/error.dart';
      ```
    - 要 按照字母顺序来排序每个部分中的语句。 大部分 IDE 都可以自动完成这个操作。
       ```dart
         import 'package:bar/bar.dart';
         import 'package:foo/bar.dart';

         import 'a.dart';
         import 'a/b.dart';
       ```

- **格式化** : 和其他大部分语言一样， Dart 忽略空格。我们提供了一个顶尖的自动化格式化 工具 –
    [dartfmt](https://github.com/dart-lang/dart_style) 来自动实现这项无聊的任务。 Dart 中官方的空格
    处理规则由 dartfmt 生成。
    + 避免 每行长度超过 80 字符。
    + 要 在所有的控制结构上使用大括号。当只有 if 语句没有 else 语句并且 所有语句可以放到一行的时候，可以省略大括号。
    + 要 在每个语句或者声明后面添加一个空行。
    ```dart
      main() {
          first(statement);
          second(statement);
      }

      anotherDeclaration() { // ... }
    ```
