import 'package:digital_ghar/Model/SuccessModel/success_model.dart';

abstract class QuatationRequestRepo {
  Future<SuccessModel> addQuatationRequestApi(
    houseSize,
    requirements,
    contractorId,
  );

  Future<SuccessModel> predictCostApi(houseSize, requirements);

  Future<SuccessModel> sendResponseToUserApi(
    estimatedCost,
    timeTaken,
    additionalNotes,
  );

  
}
