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

#### String 字符串

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

#### 数组的方法

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

#### 添加

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

#### 删除

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

#### 数组循环遍历方法

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

#### 默认构造函数

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

#### 多个构造函数

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
