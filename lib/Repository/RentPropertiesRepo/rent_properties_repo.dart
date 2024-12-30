import 'package:digital_ghar/Model/RentPropertiesModel/rent_properties_model.dart';

abstract class RentPropertiesRepo {
  Future<RentPropertiesModel> rentPropertiesApi();
}