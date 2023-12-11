## Flutter 学习笔记

### 创建页面

使用dart 语言，需要创建一个`.dart`结尾的文件。

```
// 入口是main ，运行main 中的代码
// 写代码一定要写分号
void main(List<String> args) {
  print('hellow new flutter');
}

```

### 打印

`print`

### 定义变量 及常量
可以通过`var` 来定义变量，他会自动匹配变量的数据类型，也可以使用 对应的String , int来指定定义的类型。

使用 `const` 或者 `final` 来定义常量 
const 与 final 的区别。 

const 定义后需要赋值否则汇报从。final可以先定义不赋值，可以在后面再赋值，有且只有一次赋值的机会 。final也可是一个函数的返回结果的赋值。但是const 不可以
```
void main(List<String> args) {
  print('hellow new flutter');
  String str1 = 'hellow';
  var num1 = 2;
  const ENV_POORT = 8000;
  print(num1);
  print(str1);
}
```

## dart数据类型

#### String字符串
字符串定义可以使用 '单引号',"双引号",'''三引号可以换行！！！'''
dart提供 $变量 的方式，再字符串中引入别的内容,不论是什么用什么定义的字符串
判断相等使用 == ，dart中不存在===
```
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
使用int 来定义整形,使用double 来定义浮点类型

```
void main(List<String> args) {
  print('hellow new flutter');
  int numb1 = 100;
  print(numb1);
}
```

### Boolean 布尔类型
使用bool 来定义布尔类型
```
void main(List<String> args) {
  print('hellow new flutter');
  int numb1 = 100;
  print(numb1);
}
```

### List 数组类型
使用 List来定义数组，自然也可以使用var
可以使用 `  <String>`的方式来定义数组中的内容是那种类型，要求字符串中所有的内容都是String类型的

#### 数组的方法
`List.filled(length, '1')`相当于创建了一个固定长度的数组，后面的内容可以不填写。 创建后不可以通过add增加来改变List长度，也不可以通过length 赋值来改变 List长度

`arr.add()` 向数组最后方新加入一个元素
```
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
Map类型，可以通过new Map()来进行对象的创建，也可以直接使用var来定义
定义对象名称需要用双引号包裹，读取和赋值的时候需要使用obj['name'] 的方式来获取，不可以使用js . 的方式调用。
```
void main(List<String> args) {
  var obj = {"name": "xiaotao", "age": 23};
  print(obj);
  print(obj["name"]);
}
```
