import 'dart:developer';

class AppUrl {
  static const String baseUrl = 'http://127.0.0.1:8000/';
  // static String baseUrl = "http://192.168.0.104:8000/";
//   static String baseUrl =
//       "https://digital-ghar-backend-git-main-masab2s-projects.vercel.app/";

  // Login Url
  static String loginUrl = "${baseUrl}user/login";

  // register Url
  static String registerUrl = "${baseUrl}user/register";

  // Category Url
  static String catUrl = "${baseUrl}api/getCategories";

  // House For Sale By Category Url
  static String houseForSaleByCatUrl(category) =>
      "${baseUrl}api/get-house-by-category?category=$category";

  static String houseForSaleUrl = "${baseUrl}api/get-all-house-for-sale";

  // For Image Url
  static String buildUrlImage(String image) {
    log("${baseUrl}img/$image");
    return "${baseUrl}img/$image";
  }

  // For Rent Properties Url
  static String rentPropertiesUrl = "${baseUrl}api/get-all-rent-properties";

  // Add Contractor Url
  static String contractorUrlCurd = "${baseUrl}contractor/";

  // Add House For Sale Url
  static String addhouseForSaleUrl = "${baseUrl}api/add-house-for-sale";

  // Delete House
  static String deleteHouseForSellUrl(id) =>
      "${baseUrl}api/delete-house?id=$id";

  static String updateHouseForSellUrl(id) =>
      "${baseUrl}api/update-house?id=$id";

  // Add Quatation Routes
  static String addQuatationUrl = "${baseUrl}api/add-quotation-request";

  // Predict Cost
  static String predictCostUrl = "${baseUrl}api/predict-cost";
    
}
