import 'package:digital_ghar/Model/AddContractorProfileModel/add_contractor_profile_model.dart';
import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';

abstract class ContractorProfileRepo {
  Future<AddContractorProfileModel> addContraterProfileApi(
    fullName,
    email,
    phone,
    address,
    password,
    company,
    regNo,
    canManageTeam,
    canEditProfile,
    isActive,
    image,
  );

  // Get Contractor Profile
  Future<GetAllContractorProfileModel> getContractorProfileApi();
}
