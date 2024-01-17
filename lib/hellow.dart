void main(List<String> args) {
  print('hellow new flutter');

  // STRING

  // String str1 = 'hellow';
  // var num1 = 2;
  // const envPort = 8000;
  // final envDomain;
  // envDomain = 'net';
  // var str2 = '''
  //             这里是 三个引号 模板字符串可以使用模板字符串方式使用---
  //             $envDomain -- 模板里的内容
  //             ''';
  // var str4 = "$str2 $str1";
  // print(str2 == str4);
  // print(str2);
  // print(str4);

  // NUMBER

  // int numb1 = 100;
  // double numb2 = 200.5;
  // print(numb1 + numb2);
  // print(numb1);

  // BOOLEAN

  // bool bol = true;
  // print(bol);

  // LIST

  // List list1 = [
  //   {name: 'xiaotao', age: 23}
  // ];
  // List list = ['xiaotao', 23, false];
  // List l2 = <String>['xiaotao', 'xiaoming', 'xiaoli'];
  // // 也可以通过 <String>来规定数组里元素的数据类型
  // List l3 = List<String>.filled(2, '1');
  // l2.add('xiaohei');
  // // l3.add(2);  会报错，不可以再添加，不可以改变长度
  // // l3.length = 0; 会报错。不可以改变长度
  // l3[0] = 'hsu'; // 可以改变数组内容
  // print(l2);
  // print(l3);
  // print(list);

  // MAP OBJ

  // var obj = {"name": "xiaotao", "age": 23};
  // Map obj2 = new Map();
  // obj2["class"] = "class one";
  // print(obj2);
  // print(obj["name"]);

  // is 判断类型

  // List arr1 = [1, 23, 'sser'];
  // String str = 'sedsk';
  // double num = 12.5;
  // print(arr1 is String);
  // print(arr1 is List);
  // print(str is String);
  // print(num is int);
  // print(num is double);

  // 类型转换
  // int.parse 只能转换整型，
  // 浮点型需要用double.parse来转换
  // 所以可以全部使用 double.parse 来转换
  // String str = '121.5';
  // // int num = int.parse(str); // 报错
  // double num2 = double.parse(str);
  // String str1 = num2.toString();
  // print(num2);
  // print(str1 == str);

  // 算数运算符
  // + - * /  %余数 ~/取整
  // int a = 5;
  // int b = 2;
  // print(a ~/ b);
}
