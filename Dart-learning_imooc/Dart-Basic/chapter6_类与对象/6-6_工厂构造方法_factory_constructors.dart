/**
 * 6-6: 工厂构造方法
 */

class Logger {
    final String name;
    // 泛型: key 为 String 类型, value 为 Logger 对象
    static final Map<String, Logger> _cache = <String, Logger>{};

    factory Logger(String name) {
        if (_cache.containsKey(name)) {
            return _cache[name];
        } else {
            final logger = Logger._internal(name);
            _cache[name] = logger;
            return logger;
        }
    }

    // 命名的构造方法，私有构造方法
    // 工厂构造方法不能有返回值
    Logger._internal(this.name);

    void log(String msg) {
        print(msg);
    }
}