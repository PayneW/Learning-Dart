# Learning-Dart  --  Dart 学习
- [Dart 中文网站](http://dart.goodev.org/)



## 安装 Dart
- [安装 Dart](http://dart.goodev.org/install)
- Windows 平台有 2 种方式:
    - 1、[利用 chocolatey 安装:](http://dart.goodev.org/install/windows#chocolatey)
        + 安装 Chocolatey
            - A)、以 "管理员" 身份运行 Run 窗口: 首先用 `win + R` 快捷键打开 "Run" 窗口，然后输入 `cmd` 接着按下
                        Ctrl + Shift + Enter 就是以管理员身份运行了。(tips: 注意左上角会有"管理员"字体提示，来源: `https://www.howtogeek.com/194041/how-to-open-the-command-prompt-as-administrator-in-windows-8.1/`)
            - B)、在上面以管理员身份打开的 Run 窗口中粘贴段代码运行:
                + `@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"`
                + 安装完毕输入: choco -v 就可以查看版本号是否安装成功了。
        + 利用安装好的 Chocolatey 安装 Dart
            - 提前打开 vpn 因为 dart-sdk 存放在 google 的服务器上，不翻墙即使使用 Chocolatey 也无法下载
            - 安装 dart-sdk: choco install dart-sdk -version<version> (tips: -version 是特定的版本不需要就不用写)
            - 安装中间会提示 Do you want to run the script? 输入 Y
            - 接着就会下载 dart-sdk, dart-sdk 安装包提示有 140M 左右 (tips: 出现红字代表安装失败，重试两次)
            - 安装 dartium : choco install dartium -version<version>
            - dartium 安装包有 74M 左右
        + 在 webstorm 中加载 dart-sdk 的路径: C:\tools\dart-sdk
    - 2、[下载安装包直接安装](http://www.gekorm.com/dart-windows/) 建议使用 chocolatey 安装，
        因为这种方法在安装时要联网下载，总是不成功。
- 如果开发 Web 应用，还需要下载 Dartium
