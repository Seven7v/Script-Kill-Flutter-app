import 'package:dio/dio.dart';

void main(List<String> args) async {
  final dio = Dio();
  void getHttp() async {
    final response =
        await dio.get('https://i.maoyan.com/api/mmdb/movie/v3/list/hot.json');
    print(response);
  }

  getHttp();
}
