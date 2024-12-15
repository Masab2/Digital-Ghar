import 'package:digital_ghar/Repository/AuthRepo/auth_http_repo.dart';
import 'package:digital_ghar/Repository/AuthRepo/auth_repo.dart';

import '../../main.dart';

class ServiceLocator {
  static void initService() {
    getIt.registerLazySingleton<AuthRepo>(() => AuthHttpRepo());
  }
}
