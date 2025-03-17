import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/routes/routes.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/service/ServiceLocator/service_locator.dart';
import 'package:digital_ghar/viewModel/AddPropertyViewModel/add_property_viewModel.dart';
import 'package:digital_ghar/viewModel/AuthViewModel/login_view_Model.dart';
import 'package:digital_ghar/viewModel/AuthViewModel/register_viewModel.dart';
import 'package:digital_ghar/viewModel/BottomNavBarViewModel/bottom_nav_bar_viewModel.dart';
import 'package:digital_ghar/viewModel/CategoryViewModel/category_viewModel.dart';
import 'package:digital_ghar/viewModel/ContractorProfileViewModel/contractor_profile_viewModel.dart';
import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:digital_ghar/viewModel/RentPropertiesViewModel/rent_properties_viewModel.dart';
import 'package:digital_ghar/viewModel/contracters/contract_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

GetIt getIt = GetIt.instance;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  ServiceLocator.initService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ChangeNotifierProvider(create: (_) => RegisterViewModel()),
        ChangeNotifierProvider(create: (_) => BottomNavBarViewModel()),
        ChangeNotifierProvider(create: (_) => CategoryViewmodel()),
        ChangeNotifierProvider(create: (_) => HouseForSellViewModel()),
        ChangeNotifierProvider(create: (_) => RentPropertiesViewmodel()),
        ChangeNotifierProvider(create: (_) => ContractorProfileViewmodel()),
        ChangeNotifierProvider(create: (_) => AddPropertyViewmodel()),
        ChangeNotifierProvider(create: (_) => ContractorsUserViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Digital Ghar',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColor.whiteColor,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black),
          ),
          scaffoldBackgroundColor: AppColor.whiteColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RoutesNames.splashView,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
