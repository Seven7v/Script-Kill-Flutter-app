void main(List<String> args) {
  RequestResult req = RequestResult(200, 'success', '成功', [1, 2]);
  req.fetch();
  req.error();
  req.success();
  UpdateResult upd = UpdateResult(500, 'error', '失败');
  upd.error();
  upd.success();
  // 多态
  // 定义使用父类的 类型,用子类创建实例,就可以使用对应实例里的方法.
  // 可用与传参接受不同的参数
  Result resq = RequestResult(500, 'error', '失败', [3]);
  resq.success();
  C c = C();
  c.a();
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

mixin class A {
  a() {
    print('a');
  }
}

mixin class B {
  b() {}
}

class C with A, B {}
