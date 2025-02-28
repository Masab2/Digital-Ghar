import 'package:digital_ghar/Model/HouseForSaleModel/house_for_sale_model.dart';
import 'package:digital_ghar/Model/RentPropertiesModel/rent_properties_model.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/view/view.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutesNames.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case RoutesNames.selectAuthScreenView:
        return MaterialPageRoute(
          builder: (_) => const SelectAuthScreenView(),
        );
      case RoutesNames.loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case RoutesNames.registerView:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      case RoutesNames.bottomNavBarView:
        return MaterialPageRoute(
          builder: (_) => const CustomizedBottomNavBar(),
        );
      case RoutesNames.allPropertiesView:
        return MaterialPageRoute(
          builder: (_) => AllPropertiesDisplayView(
            data: args as List<HouseForSaleData>,
          ),
        );
      case RoutesNames.profileView:
        return MaterialPageRoute(
          builder: (_) => const ProfileView(),
        );
      case RoutesNames.allRentPropertiesView:
        return MaterialPageRoute(
          builder: (_) => const AllRentPropertiesView(),
        );
      case RoutesNames.houseForSellPropertieDetailView:
        final Map<String, dynamic> arguments = args as Map<String, dynamic>;
        final houseforSell = arguments['houseForSell'] as HouseForSaleData;
        final rentProperty = arguments['RentProperty'] as RentPropertiesData;

        return MaterialPageRoute(
          builder: (_) => PropertyDetailView(
            data: houseforSell,
            rentData: rentProperty,
          ),
        );
      // Contractor Routes
      case RoutesNames.contractorDashboardView:
        return MaterialPageRoute(
          builder: (_) => const ContractorDashboardView(),
        );
      // Admin Routes
      case RoutesNames.adminDashboardView:
        return MaterialPageRoute(
          builder: (_) => const AdminDashboardView(),
        );
      case RoutesNames.addContractorProfileView:
        return MaterialPageRoute(
          builder: (_) => const AddContractorProfileView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No Route Defined'),
              ),
            );
          },
        );
    }
  }
}
