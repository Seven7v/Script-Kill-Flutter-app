## Flutter 学习笔记

为了方便运行可以下载一个 CodeRunner 插件，可以右键点击运行

### 创建页面

使用 dart 语言，需要创建一个`.dart`结尾的文件。

```dart
// 入口是main ，运行main 中的代码
// 写代码一定要写分号
void main(List<String> args) {
  print('hellow new flutter');
}

```

### 打印

`print`

## 数据类型

### 定义变量 及常量

可以通过`var` 来定义变量，他会自动匹配变量的数据类型，也可以使用 对应的 String , int 来指定定义的类型。

使用 `const` 或者 `final` 来定义常量
const 与 final 的区别。

const 定义后需要赋值否则汇报从。final 可以先定义不赋值，可以在后面再赋值，有且只有一次赋值的机会 。final 也可是一个函数的返回结果的赋值。但是 const 不可以

```dart
void main(List<String> args) {
  print('hellow new flutter');
  String str1 = 'hellow';
  var num1 = 2; // 可以自动的进行类型推断
  const ENV_POORT = 8000;
  print(num1);
  print(str1);
}
```

## dart 数据类型

### String 字符串

字符串定义可以使用 '单引号',"双引号",'''三引号可以换行！！！'''
dart 提供 $变量 的方式，再字符串中引入别的内容,不论是什么用什么定义的字符串
判断相等使用 == ，dart 中不存在===

```dart
void main(List<String> args) {
  String str1 = 'hellow';
  final envDomain;
  envDomain = 'net';
  String str2 = '''
              这里是 三个引号 模板字符串可以使用模板字符串方式使用---
              ${envDomain} -- 模板里的内容
              ''';
  String str4 = '''
    不加 大括号的变量
    $str2
    ''';
  print(str2 == str4);
  print(str2);
  print(str4);
}

```

### number 数字

使用 int 来定义整形,使用 double 来定义浮点类型

```dart
void main(List<String> args) {
  print('hellow new flutter');
  int numb1 = 100;
  double numb2 = 200.5;
  print(numb1 + numb2);
  print(numb1);
}
```

### Boolean 布尔类型

使用 bool 来定义布尔类型

```dart
void main(List<String> args) {
   bool bol = true;
   print(bol);
}
```

### List 数组类型

使用 List 来定义数组，自然也可以使用 var
可以使用 `  <String>`的方式来定义数组中的内容是那种类型，要求字符串中所有的内容都是 String 类型的

### 数组的方法

`List.filled(length, '1')`相当于创建了一个固定长度的数组，后面的内容可以不填写。 创建后不可以通过 add 增加来改变 List 长度，也不可以通过 length 赋值来改变 List 长度

`arr.add()` 向数组最后方新加入一个元素

```dart
void main(List<String> args) {
    List list = ['xiaotao', 23, false];
    List l2 = <String>['xiaotao', 'xiaoming', 'xiaoli'];
    // 也可以通过 <String>来规定数组里元素的数据类型
    List l3 = List<String>.filled(2, '1');
    l2.add('xiaohei');
    // l3.add(2);  会报错，不可以再添加，不可以改变长度
    // l3.length = 0; 会报错。不可以改变长度
    l3[0] = 'hsu'; // 可以改变数组内容
    print(l2);
    print(l3);
    print(list);
}
```

### Map 对象

Map 类型，可以通过 new Map()来进行对象的创建，也可以直接使用 var 来定义
定义对象名称需要用双引号包裹，读取和赋值的时候需要使用 obj['name'] 的方式来获取，不可以使用 js . 的方式调用。

```
void main(List<String> args) {
  var obj = {"name": "xiaotao", "age": 23};
  print(obj);
  print(obj["name"]);
}
```

### 类型判断

```dart
void main(List<String> args) {
  List arr1 = [1, 23, 'sser'];
  String str = 'sedsk';
  double num = 12.5;
  print(arr1 is String);
  print(arr1 is List);
  print(str is String);
  print(num is int);
  print(num is double);
}
```

### 类型转换

```dart
void main(List<String> args) {
  // int.parse 只能转换整型，
  // 浮点型需要用double.parse来转换
  // 所以可以全部使用 double.parse 来转换
  String str = '121.5';
  // int num = int.parse(str); // 报错
  double num2 = double.parse(str);
  print(num2);

  // 可以使用 .toString()将数字类型转换为字符串
  String str1 = num2.toString();
  print(str1 == str);
}
```

### 算数运算符

```dart
void main(List<String> args) {
  int a = 5;
  int b = 2;
  print(a ~/ b);
}
```

## 循环语句

`switch`可以在每个 case 执行后不写 break ，dart 默认执行一条语句后就结束
其余的内容与 JS 相同

# List & Map

## List

### List 属性

> length 长度

> rerversed 将 List 数据反转，返回的是一个可迭代的对象
> // 可以通过 toList 将结果转换为数组

> isEmpty 是否为空

> isNotEmpty 是否非空

```dart
void main(List<String> args) {
  // List
  // List 属性 length 长度 ,
  List menu = ['zhangsan', 'lisi', 'wangwu'];
  print(menu.length);
  // reversed 将List数据反转，返回的是一个可迭代的对象
  // 可以通过toList 将结果转换为数组
  print(menu.reversed.toList());
  print(menu.isEmpty);
  print(menu.isNotEmpty);
}
```

### List 方法

**`List.indexOf(value)`** 查找指定元素索引

### 添加

**`List.add()`** 向 List 中添加元素

**`List.addAll(['xx'])`** 向 List 添加多个元素，传入的内容是以一个数组。与 js concat 类似

**`List.insert(index,'value')`** 向索引为 index 的位置插入 value 元素

**`List.insertAll(index,['value1','value2'])`** 向索引为 index 的位置插入 'value1','value2'元素

**`List.join('-')`** 与 **`String.split('-')`** 用法与 js 相同

**数组截取**
**`List.skip(0).take(5)`** 与 skip 中传入的是跳过几个，take 中传入的是要后面的几个数据。类似于 从 0-5 的截取

```dart
void main(List<String> args) {
    List menu = ['zhangsan', 'lisi', 'wangwu'];
    menu.add('zhaoliu');
    // 类似拼接数组
    menu.addAll(['huqi', 'liuba']);
    // 在索引为2 的位置插入数据
    menu.insert(2, 'chenjiu');
    // 在数组后面追加数据
    menu.insertAll(menu.length, ['sunshi']);
    print(menu);
}
```

### 删除

**`List.remove()`** 删除指定元素

**`List.removeAt()`** 删除指定索引

```dart
void main(List<String> args) {
    List menu = ['zhangsan', 'lisi', 'wangwu'];
    menu.add('zhaoliu');
    menu.addAll(['huqi', 'liuba']);
    print(menu);
    // 删除 remove removeAt
    menu.remove('liuba');
    menu.removeAt(4);
    print(menu);
    // 结果 [zhangsan, lisi, wangwu, zhaoliu]
    // 可以先查找元素索引，再指定索引删除
    int rout = menu.indexOf('wangwu');
    print(rout);
}
```

### 数组循环遍历方法

**`List.foreach((element){})`**

**`List.map((element){})`**
`map`不会操作原数组，返回一个新的可迭代的对象，可以通过 toList 转换成数组

```dart
void main(List<String> args) {
    List menu = ['zhangsan', 'lisi', 'wangwu'];
    var newMenu = menu.map((element) {
        print(element);
        return element + 'map操作';
    });
    print(newMenu.toList());
}
```

**`List.where((element)=>false)`**
where 类似与 js 数组中的 filter，返回的也是可迭代的对象，不会操作原数组

```dart
void main(List<String> args) {
    List menu = ['zhangsan', 'lisi', 'wangwu'];
    var result = menu.where((element) => element.length > 7);
    print(result);
}
```

**`List.every((element)=>false)`**
every 遍历必须每一个元素都满足条件则返回 true，如果有一个不满足则返回 false
**`List.any((element)=>false)`**
any 遍历如果有一个元素满足条件则返回 true，如果都不满足则返回 false

对象里的属性名称一定要被双引号包起来

```dart
void main(List<String> args) {
    List table = [
        {"id": 1, "check": true},
        {"id": 2, "check": true},
        {"id": 3, "check": true},
        {"id": 3, "check": false},
    ];
    bool isAllCheck = table.every((element) => element["check"]);
    bool hasNoCheck = table.any((element) => !element["check"]);
    print(isAllCheck);
    print(hasNoCheck);
}
```

## Set 类数组结构

与 JS 相同，都是不允许重复的结构，不可以 newSet()中直接传参

```dart
void main(List<String> args) {
  var set = new Set(); // 和JS 一样，不可以有重复
  set.add(111);
  set.add(222);
  set.add(111);
  print(set.toList());
  // 去重 传入数组不可以在new Set()中传参，需要new 一个空的，在调用addAll方法填入
  List arr = [1, 1, 2, 3, 4, 3, 2, 34, 5, 9, 5];
  set.addAll(arr);
  print(set);
}
```

## Map

### Map 属性

> keys 获取所有的属性名称

> values 获取所有的属性值

> entries 将键值对放入数据中，可以通过遍历获取内容

> isEmpty 是否为空

> isNotEmpty 是否非空

```dart
void main(List<String> args) {
  // 创建Map类型的数据就是用Map 可以在后面根据数据的类型定义key和value的类型，
  // dynamic 是动态的意思
  Map<String, dynamic> obj = {"name": "zhangshan", "age": 1};

  var keys = obj.keys;
  var values = obj.values;
  var items = obj.entries;
  print(items);
  for (var element in items) {
    print(element.value); // 可以直接调用读取，不可以赋值
  }
}
```

### Map 方法

**`Map['key'] = "value";`** 增加一个的方法

**`Map.addAll({"key":"value"})`** 添加多个方法

**`Map.addEntries([MapEntry("key", "value")])`** 传入的是一个 MapEntry 的数组

**`Map.remove("key")`** 根据 key 值删除元素

**`Map.removeWhere((key, value) => value == 'lisi')`** 根据条件判断删除

**`Map.containsKey("key")`** 判断是否包含某个属性

**`Map.containsValue("value")`** 判断是否包含某个值

**`Map.forEach((key, value){})`** map 支持 foreach

**`Map.map((key, value){})`** Map 支持 map，返回值需要时 MapEntry，不改变原对象，会生成新的对象

```dart
void main(List<String> args) {
  // 创建Map类型的数据就是用Map 可以在后面根据数据的类型定义key和value的类型，
  // dynamic 是动态的意思
  Map<String, dynamic> obj = {"name": "zhangshan", "age": 1};
  // 直接赋值
  obj['addr'] = "chengdu";
  // 添加多个
  obj.addAll({"home": "jilin", "id": 'x12289021'});
  // 通过addEntries 添加
  obj.addEntries([MapEntry("mom", "lisi"), MapEntry("father", "wangwu")]);
  // 删除
  obj.remove("father");
  obj.removeWhere((key, value) => value == 'lisi');

  print(obj.containsKey('name'));
  print(obj.containsValue('name'));
  print(obj);
  // foreach
  obj.forEach((key, value) {
    print(key);
  });
  // map
  Map obj2 = obj.map((key, value) {
    print('$key is $value');
    return MapEntry(key, '$key is $value');
  });
  print(obj2)
}

```

## 函数

### 定义函数

函数定义不需要关键字，函数前的`void`,`int`代表函数的返回值类型，`void`代表了函数无返回值

函数引入非常简单 只需要
`import './lib/function.dart'`引入路径，入境中的方法就可以使用，不需要做特定的导出。

```dart
// 对下方定义参数进行调用
void main(List<String> args) {
  int num = sum(2, 10, 15);
  int num1 = sum(2, 10);
  console(num);
  console(num1);
  // String score = printResult('zhangshan', 23);
  String score = printResult(name: 'zhangshan', score: 68);
  console(score);
  var fn = a();
  fn();
  fn();
  fn();
  fn();
  fn();
  //结果
    //100
    //101
    //102
    //103
    //104
}

// 函数无返回值
void console(value) {
  print(value);
}
// 使用 类型 参数 的形式来定义传入参数类型
int sum(int num1, int num2) {
  return num1 + num2 ;
}

// 被中括号包起来的 参数时可选参数，可以为他赋值，是默认值[int num3 = 0]

// 可选参数
String printResult(String name, dynamic score, [dynamic sex]) {
  // zhangshan ----------- 23 -----------null 不传sex 结果是null
  return '$name ----------- $score -----------$sex';
}

// 参数默认值
int sum(int num1, int num2, [int num3 = 0]) {
  return num1 + num2 + num3;
}

// 命名参数
// 命名参数需要设置默认值，（我理解都是可选参数
// 调用时 printResult(score: 68,name: 'zhangshan')按照传入名称对应，不需要固定顺序
String printResult(
    {String name = 'any', dynamic score = 0, dynamic sex = '男'}) {
  // zhangshan ----------- 23 -----------null 不传sex 结果是null
  return '$name ----------- $score -----------$sex';
}

// 闭包
// 函数的闭包与js相同，就是函数可以访问其他函数作用域中的数据
// 这里在 main函数可以通过 使用 var f1 = a(); f1(); 获取到a函数中的n变量，所以n的值不会被销毁 会一直被保留
Function() a() {
  int n = 99;
  return () {
    n = n + 1;
    print(n);
  };
}
```

## 类

类使用 class 定义
**不需要使用 new 关键字来创建类的实例**

### 构造函数

### 默认构造函数

```dart
void main(List<String> args) {
  // 使用js的写法，创建一个类的实例需要用到关键词new，在dart中不需要使用new
  // var student = new Student();
  var student = Student('lisi', '5', 12);
  student.detail();
}

class Student {
  // 构造函数不需要使用constructor。使用与类名相同的方法名即可
  // 类的构造函数必须有初始值，否则会报错 !!!!
  String name = 'zhangsan';
  String grade = '4';
  int age = 10;
  Student(String name, String grade, int age) {
    // 在这里的赋值 需要使用this
    this.name = name;
    this.grade = grade;
    this.age = age;
  }
  // 或者 使用初始化列表的方式(这种方式也不是很使用)
  // String name;
  // String grade;
  // int age;
  // Student(String name, String grade, int age)
  //     : name = "",
  //       grade = "",
  //       age = 0 {
  //   // 在这里的赋值 需要使用this
  //   this.name = name;
  //   this.grade = grade;
  //   this.age = age;
  // }
```

最多使用的构造函数书写方式 `Student(this.name, this.grade, this.age);` 这里在定义变量的时候不需要设置初始值

```dart
void main(List<String> args) {
 // 使用js的写法，创建一个类的实例需要用到关键词new，在dart中不需要使用new
 // var student = new Student();
 // 定义了一个类后，创建实例可以直接将类型写成我们自己定义的类
 Student student = Student('lisi', '5', 12);
 student.detail();
}
class Student {
 String name;
 String grade;
 int age;
 Student(this.name, this.grade, this.age);
 detail() {
   // 可以使用参数 。this.name/this.grade，也可不不适用this
   // 使用this拼接字符串需要加上{},页面会提示this. is Unnecessary
   print('${this.name} is Grade ${this.grade},${this.age} year old');
   print('$name is Grade $grade,$age year old');
 }
}

```

### 多个构造函数

多个构造函数可以用来接受不同个数的参数，来创建实例。这里需要给没有被接受的属性赋初始值。
这里使用了 dart 自带的方法`dart:convert`中的 `jsonEncode`来进行 Json 转换。

> `jsonEncode(data)`jsonEncode 转换 class 实例需要在 class 中提供固定的`toJson`方法 将类中的每一个值放入 Map 中 返回。（ps：自觉麻烦

```dart
import 'dart:convert';

void main(List<String> args) {
  Result code = Result.code(200);
  Result msg = Result.msg(500, '系统服务错误');
  Result data = Result.data(200, 'success', {
    'title': 'Tiltle',
    'list': [2, 5, 3]
  });
  // 下列方式直接打印指挥显示Instance of 'Result'
  print(code);
  print(msg);
  print(data);
  // 转换成JSON打印，要想执行这个函数，需要在类里写一个toJson 的方法
  print(jsonEncode(data));
  print(jsonEncode(msg));
  print(jsonEncode(code));
}

class Result {
  // 多个构造函数需要有初始值。类似于不必传的参数
  int code;
  String msg = '';
  Map data = {};
  Result.code(this.code);
  Result.msg(this.code, this.msg);
  Result.data(this.code, this.msg, this.data);
  // 类如果想要被dart:convert 转换成JSon格式一定要有toJson 方法。
  // 将类中的每一个值放入Map中 返回
  Map toJson() {
    Map map = Map();
    // Map map = {}; 这种写法也可以
    if (code != 0) {
      map['code'] = code;
    }
    if (msg.isNotEmpty) {
      map['msg'] = msg;
    }
    if (data.isNotEmpty) {
      map['data'] = data;
    }
    return map;
  }
}
```

### get & set

类中的 get 和 set 类似于提供了一个属性
可以直接通过该关键字定义对应的属性，以便后面访问和修改

get 定义时后是一个对象
set 需要接受一个参数，在使用 set 时不可以使用函数传参 ，要用直接赋值。

`..`类中属性和方法的链式调用可以使用。不需要写多个语句

```dart
void main(List<String> args) {
  // 使用js的写法，创建一个类的实例需要用到关键词new，在dart中不需要使用new
  // var student = new Student();
  Student student = Student('lisi', '5', 12);
  student.detail();
  Result code = Result.code(200);
  Result msg = Result.msg(500, '系统服务错误');
  Result data = Result.data(200, 'success', {
    'title': 'Tiltle',
    'list': [2, 5, 3]
  });
  // 转换成JSON打印，要想执行这个函数，需要在类里写一个toJson 的方法
  print(jsonEncode(data));
  print(jsonEncode(msg));
  print(jsonEncode(code));
  //  set 的调用方法时直接赋值。
  msg.msgValue = '请求成功';
  print(msg.mes);
  // 如果是类中的属性及方法的链式调用 可以使用 '..'
  msg
    ..msgValue = '请求失败'
    ..getContent();
}

class Result {
  // 多个构造函数需要有初始值。类似于不必传的参数
  int code;
  String msg = '';
  Map data = {};
  Result.code(this.code);
  Result.msg(this.code, this.msg);
  Result.data(this.code, this.msg, this.data);

  // get 类似于属性的调用，可以直接获取对应数据
  get mes {
    return 'code: $code, $msg';
  }

  // set
  set msgValue(value) {
    msg = value;
  }

  getContent() {
    print('code: $code, msg: $msg');
  }
```

### 私有！

预定 在变量或者方法等内容钱加 "\_"代表时私有的内容，在外面文件不可以访问私有属性。
如果类在当前页面定义，在当前页面方法中可以 获取到私有属性。
如果该类被其他文件引入，则私有属性不可以被访问，访问会报错

`/class.dart`

```dart
class Result {
  // 多个构造函数需要有初始值。类似于不必传的参数
  int code;
  String msg = '';
  Map _data = {};
  Result.data(this.code, this.msg, this._data);
}
```

`/use.dart`

```dart
import './class.dart';
void main(List<String> args) {
  Result data = Result.data(200, 'success', {
    'list': [1, 2],
    'title': 'xxee'
  });
  print(data._data); // 项目运行代码检查都会报错
}
```

### static

使用`static`定义的属性是静态属性，定义的方法是静态的方法。
**使用 static 定义的方法可以直接通过类名加属性调用，不需要创建实例。**

静态的方法与属性都只能访问静态数据，不可以使用类中定义的其他属性值。会报错。

```dart
void main(List<String> args) {
  print(Result.resultErrorCode);
  print(Result.resultSuccessCode);
  print(Result.resultSuccess());
  print(Result.resultError());
}

class Result {
  // 多个构造函数需要有初始值。类似于不必传的参数
  int code;
  String msg = '';
  Map _data = {};
  Result.code(this.code);
  Result.msg(this.code, this.msg);
  Result.data(this.code, this.msg, this._data);
  // static 静态属性 可以直接通过类名访问的属性，不需要实例化
  static int resultSuccessCode = 200;
  static String resultSuccessMsg = 'success';
  static int resultErrorCode = 500;
  static String resultErrorMsg = 'Systom error';
  // 静态方法
  static String resultSuccess() {
    return jsonEncode(Result.msg(resultSuccessCode, resultSuccessMsg));
  }

  static String resultError() =>
      jsonEncode(Result.msg(resultErrorCode, resultErrorMsg));


  // 类如果想要被dart:convert 转换成JSon格式一定要有toJson 方法。
  // 将类中的每一个值放入Map中 返回
  Map toJson() {
    Map map = Map();
    // Map map = {}; 这种写法也可以
    if (code != 0) {
      map['code'] = code;
    }
    if (msg.isNotEmpty) {
      map['msg'] = msg;
    }
    if (_data.isNotEmpty) {
      map['data'] = _data;
    }
    return map;
  }
}
```

### 继承

继承使用的是 extends 关键字

`class Group extends Student`, 继承的类需要有自己的构造函数，再构造函数中通过`super`来继承父级的属性

继承后子类可以直接调用父类的方法，也可以重写父类的方法。
`@override`重写父类方法，可以省略

```dart
void main(List<String> args) {
  // 使用js的写法，创建一个类的实例需要用到关键词new，在dart中不需要使用new
  // var student = new Student();
  Student student = Student('lisi', '5', 12);
  student.detail();
  Group group = Group('wangwu', '2', 8, '无敌');
  group.detail();
  group.group();
  group.detail();
  print(group is Group);
  print(group is Student);
}

class Student {
  String name;
  String grade;
  int age;
  Student(this.name, this.grade, this.age);
  detail() {
    // 可以使用参数 。this.name/this.grade，也可不不适用this
    // 使用this拼接字符串需要加上{},页面会提示this. is Unnecessary
    print('${this.name} is Grade ${this.grade},${this.age} year old');
    print('$name is Grade $grade,$age year old');
  }
}

// 写法还是要注意一下 与js不同
class Group extends Student {
  String groupStage;
  // 构造函数
  Group(String name, String grade, int age, this.groupStage)
      : super(name, grade, age);

  group() {
    print('$name is $groupStage');
  }

  @override
  detail() {
    print('$name is Grade $grade,$age year old,is $groupStage');
  }
}
```

### 抽象类

抽象类是对本质相同内容类定义一个标准.有相同本质要实现不同功能的子类可以继承这个类,需要实现其中定义的抽象方法

`abstract`关键字定义抽象类

**举个例子**

Result 是一个抽象类, success(); 和 error()是其中的两个方法.子类中需要将这两个抽象方法重写.

抽象类也可有普通方法,所有人相同的公用方法.

### 多态

定义使用父类的类型,用子类创建实例,就可以使用对应实例里的方法.
(可用与传参接受不同的参数)

```dart
void main(List<String> args) {
  RequestResult req = RequestResult(200, 'success', '成功', [1, 2]);
  req.fetch();
  req.error();
  req.success();
  UpdateResult upd = UpdateResult(500, 'error', '失败');
  upd.error();
  upd.success();
  // 多态
  // 定义使用父类的类型,用子类创建实例,就可以使用对应实例里的方法.
  // 可用与传参接受不同的参数
  Result resq = RequestResult(500, 'error', '失败', [3]);
  resq.success();
}

// 抽象类
// 对请求 更新 的结果坐不同的处理
abstract class Result {
  // 类似于制定一个本质相同类的标准
  // 本质功能相同但是有差异的内容需要继承这个类，实现抽象方法。
  int code = 200;
  String type = 'success';
  String msg = '请求成功'; //
  Result(this.code, this.type, this.msg);
  // 普通方法(公用的)
  fetch() {
    // 同样的接受参数
    print('fetch');
  }

  // 抽象方法需要子类自行实现
  // 根据成功和失败需要实现不同的返回方法

  success();
  // error 对不同code 的处理
  error();
}

class RequestResult extends Result {
  List data = [];
  RequestResult(int code, String type, String msg, this.data)
      : super(code, type, msg);
  @override
  error() {
    print('$code 请求失败.');
  }

  @override
  success() {
    print('$code 请求成功. $data');
  }
}

class UpdateResult extends Result {
  UpdateResult(
    int code,
    String type,
    String msg,
  ) : super(code, type, msg);

  @override
  error() {
    print('$code 更新失败.');
  }

  @override
  success() {
    print('$code 更新成功');
  }
}
```

### 接口

抽象类中可以写一些普通方法,接口中的内容全部都是抽象的内容.不会有普通方法
使用 `implements`关键字,意味着实现对应的类,需要将里面所有的方法实现.
implements 可以一次实现多个类.
`class Upload implements Result,A,B{}`

```dart
class Upload implements Result {
  @override
  int code;

  @override
  String msg;

  @override
  String type;

  @override
  error() {}

  @override
  fetch() {}

  @override
  success() {}
}
```

### 混入

`mixin`关键字可以将类定义成可混入的类,其他类混入后可以使用其中的方法
`with`后加混入类.
`class C with A,B{}`

> 混入类不可以有构造函数

> 混入类不可以继承其他类

> 如果混入了两个类里有相同 方法,后来居上原则.调用方法调用的是后引入类的方法.

> 可以对混入的类中的方法进行重写

```dart
void main(List<String> args) {
  C c = C();
  c.a();
  print(c is A);// true
}
mixin class A {
  a() {
    print('a');
  }
}

mixin class B {
  b() {}
}

class C with A, B {}
```

## 泛型

### 泛型方法

(ps:基本上不会独立存在)

> 函数的返回类型,或者参数类型在调用函数的时候传入,更加灵活使用

```dart
void main(List<String> args) {
  List<String> list = ['23', '32'];
  print(getValue<String>('EW'));
  print(getValue<int>(2));
}

T getValue<T>(T value) {
  return value;
}

```

### 泛型类

泛型类定义类的类型。在创建实例的时候传入。

```dart
void main(List<String> args) {
    // 创建实例时传入类型
  Document<String> docs = Document({'title': 'title', 'content': 'content'});
  docs.setDocumet('editor', 'lisi');
  print(docs.getDocument('editor'));
  Document<List<String>> docs2 = Document({
    'title': ['title']
  });
  docs2.setDocumet('editor', ['lisi']);
  print(docs2.getDocument('editor'));
}

// 这里T是传入的类型。根据传入的T 来决定Map value 值的类型。
class Document<T> {
  Map<String, T> doc = {};
  Document(this.doc);
  setDocumet(String key, T value) {
    doc[key] = value;
  }

  T? getDocument(String key) {
    return doc[key];
  }
}
```

如果要实现一个类，传入类型后可以调用 Document 中的 getDocument 等方法，可以用泛型限定 传入的数据类型

```dart
void main(List<String> args) {
  List<String> list = ['23', '32'];
  print(getValue<String>('EW'));
  print(getValue<int>(2));
  Document<String> docs = Document({'title': 'title', 'content': 'content'});
  docs.setDocumet('editor', 'lisi');
  print(docs.getDocument('editor'));
  // var mark = Markdown(docs);
  // mark.init();
  Markdown<Document<String>> mark = Markdown(docs);
  mark.init();
}

// 复用上面的Document类
class Document<T> {
  Map<String, T> doc = {};
  Document(this.doc);
  setDocumet(String key, T value) {
    doc[key] = value;
  }

  T? getDocument(String key) {
    return doc[key];
  }
}

// 指定传入的类型需要时 Document<String>的实例
// 其中String 不可以用T 替换。否则创建实例会报错
class Markdown<T extends Document<String>> {
  T docs;
  Markdown(this.docs);
  init() {
    print(docs.getDocument('title'));
  }
}
```

### 泛型接口

只是在定义抽象类的时候在后面加上`<T>`传入类型,在继承抽象类是也需要 使用泛型

```dart
abstract class Catch<T> {
  T? getCatch(String key);
  setCatch(String key, T value);
}

class MameryCatch<T> extends Catch<T> {
  @override
  T? getCatch(String key) {
    return null;
  }

  @override
  setCatch(String key, T value) {
    print('set');
  }
}
```

## 库

### 自定义库

可以直接创建一个 dart 文件，写好内容
`import '/xxx.dart` 导入里面全部内容。

如果想指定方法导入 可是使用 show
`import '/xxx.dart show A,B`

指定某些内容不导入 用 hide 来指定不导入某些内容
`import '/xxx.dart hide A,B`

### dart 内置库

`dart:io` `dart:convert`这里就是 dart 的内置库，提供了不同的方法。

### 三方库

查询的话 可以 使用 pub.dev 可以查询对应的三方库内容。

- 创建一个 文件 `pubspec.yaml`
- 必须要写的内容 name 和 环境

```dart
  name: 'app'
  environment:
  sdk: '^3.2.0'
```
- 通过`dart pub add` 加库名称来安装库

如 `dart pub add dio` 后根据官方文档的示例来使用。



# Dart 中的并发

## Futrue 如果使用了async 异步亲求，返回的类型一定要是Future类型的。

Future 调用类似于 promise ，相当于是微任务。

```dart
void main(List<String> args) {
  print('start');
  Future(() { // 异步执行
    print('111111111');
  });
  Future.sync(() { // 同步执行
    print('22222');
  });
  Future.delayed(Duration(seconds: 2), () { // 可以指定延迟多久执行
    print('3333333');
  });
  print('end');
}
// 打印结果
// start
// 22222
// end
// 111111111
// 22222
```

### 除了可以使用async和awite Future 也可以使用`.then` `.cacth`来获取结果。类似返回一个promise对象

```dart
import 'dart:io';

void main(List<String> args) {
  print('start');
  req().then((value) {
    print(value);
  });
  print('end');
}

Future req() {
  return Future(() {
    sleep(Duration(seconds: 2));
    return '模拟请求';
  });
}
// 打印结果
// start
// end
// 模拟请求
```

### Future 也可以像promise一样链式调用。之前js的写法是可以的 还可以return 另一个Future对象，进行链式调用



```dart
import 'dart:io';

void main(List<String> args) {
  // req().then((value) {
  //   print(value);
  //   req2(value).then((v2) {
  //     print(v2);
  //   });
  // });
  // 返回一个新的Future  可以进行链式调用 与上面的写法 结果一致
  req().then((value) {
    print(value);
    return req2(value);
  }).then((value) {
    print(value);
  });
}

Future req() {
  return Future(() {
    sleep(Duration(seconds: 2));
    return '模拟请求';
  });
}

Future req2(value) {
  return Future(() {
    sleep(Duration(seconds: 2));
    return '第二个请求';
  });
}

```

也可以使用async 和 await,将异步代码同步的写出，去掉了.then的链式调用
```dart
void main(List<String> args) async{
  String value = await req();
  String value2 = await req2(value2);
  print(value);
  print(value2);
}
```

### Future.wait 类似于Promise.all
这里调用上面写过的两个方法，结果是两个返回值组成的数组
```dart
void main(List<String> args) {
  Future.wait([req(), req2(23)]).then((value) {
    print(value);
    // 等待传入的异步都执行完毕再操作
  });
}
```
```dart
void main(List<String> args) async{
  var res = Future.wait([req(), req2(23)])
  print(res);
}
```

# Ioslate 隔离 

**将原本单线程的内容模拟成“多线程”，在主线程中创建新的隔离执行耗时任务，不会阻塞主线程的执行，执行完成后再通过管道将结果输送给主线程**
```dart
import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  print('start');
  // 通过自带的ioslate 中的ReceivePort 来创建管道，需要再Isolate.spawn 第二个参数传入。
  ReceivePort port = ReceivePort();
  // 创建隔离，传入执行的任务，一级管道
  var taskres = await Isolate.spawn(task, port.sendPort);
  // 通过listen 方法接收 send传递的内容。
  port.listen((message) {
    print(message);
    // 操作结束后要关闭管道
    port.close();
    // 杀死线程
    taskres.kill();
  });
  print('end');
}

void task(SendPort port) {
  sleep(Duration(seconds: 2));
  // 隔离的参数返回内容需要调用 port.send
  return port.send('task finash');
}

```