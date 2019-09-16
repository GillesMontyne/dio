
import 'package:dio/dio.dart';
void getHttp() async {
  try {
    var dio=Dio();
    dio.interceptors.add(LogInterceptor());
    Response response = await dio.get("http://httpbin.org/");
    print(response);
  } catch (e) {
    print(e);
  }
}

main() async{
 await getHttp();
}
