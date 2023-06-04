import 'package:ecommerce/modules/home/presenter/home_module.dart';
import 'package:ecommerce/network/dio_client.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  DioClient.register();
  registerHomeModule();
}
