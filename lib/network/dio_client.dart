import 'package:dio/dio.dart';
import 'package:ecommerce/constants/urls.dart';
import 'package:ecommerce/injection.dart';

class DioClient {
  late Dio _dio;
  Dio get instance => _dio;

  DioClient() {
    _dio = Dio();
    _dio
      ..options.baseUrl = baseURL
      ..options.responseType = ResponseType.json;
  }

  static void register() {
    locator.registerSingleton<DioClient>(DioClient());
  }
}
