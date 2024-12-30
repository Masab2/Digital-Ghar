import 'package:digital_ghar/Repository/AuthRepo/auth_http_repo.dart';
import 'package:digital_ghar/Repository/AuthRepo/auth_repo.dart';
import 'package:digital_ghar/Repository/CatgeoryRepo/category_http_repo.dart';
import 'package:digital_ghar/Repository/CatgeoryRepo/category_repo.dart';
import 'package:digital_ghar/Repository/HouseForSellRepo/house_for_sell_http_repo.dart';
import 'package:digital_ghar/Repository/HouseForSellRepo/house_for_sell_repo.dart';
import 'package:digital_ghar/Repository/RentPropertiesRepo/rent_properties_http_repo.dart';
import 'package:digital_ghar/Repository/RentPropertiesRepo/rent_properties_repo.dart';

import '../../main.dart';

class ServiceLocator {
  static void initService() {
    getIt.registerLazySingleton<AuthRepo>(() => AuthHttpRepo());
    getIt.registerLazySingleton<CategoryRepo>(() => CategoryHttpRepo());
    getIt.registerLazySingleton<HouseForSellRepo>(() => HouseForSellHttpRepo());
    getIt.registerLazySingleton<RentPropertiesRepo>(
        () => RentPropertiesHttpRepo());
  }
}
