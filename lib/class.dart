import 'dart:convert';

//  引入dart中转换的组件，可以将内容转换为Json
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
  // 下列方式直接打印指挥显示Instance of 'Result'
  print(code);
  print(msg);
  print(data);
  // 转换成JSON打印，要想执行这个函数，需要在类里写一个toJson 的方法
  print(jsonEncode(data));
  print(jsonEncode(msg));
  print(jsonEncode(code));
}

class Student {
  // 构造函数不需要使用constructor。使用与类名相同的方法名即可
  // 类的构造函数必须有初始值，否则会报错
  // String name = 'zhangsan';
  // String grade = '4';
  // int age = 10;
  // Student(String name, String grade, int age) {
  //   // 在这里的赋值 需要使用this
  //   this.name = name;
  //   this.grade = grade;
  //   this.age = age;
  // }
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
  // 最终使用

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
