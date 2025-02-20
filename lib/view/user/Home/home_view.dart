import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/config/widgets/widgets.dart';
import 'package:digital_ghar/viewModel/CategoryViewModel/category_viewModel.dart';
import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:digital_ghar/viewModel/RentPropertiesViewModel/rent_properties_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Provider.of<CategoryViewmodel>(context, listen: false).categoryApi();
        Provider.of<HouseForSellViewModel>(context, listen: false)
            .houseForSellApi();
        Provider.of<RentPropertiesViewmodel>(context, listen: false)
            .getRentPropertiesApiResponse();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarWidget.homeBar(context),
      body: RefreshIndicator(
        onRefresh: () async {
          Provider.of<CategoryViewmodel>(context, listen: false).categoryApi();
          Provider.of<HouseForSellViewModel>(context, listen: false)
              .houseForSellApi();
          Provider.of<RentPropertiesViewmodel>(context, listen: false)
              .getRentPropertiesApiResponse();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                0.01.ph(context),
                const HomeHeaderWidget(),
                0.02.ph(context),
                const HomeCategoryWidget(),
                0.01.ph(context),
                const HomePropertyDisplayWidget(),
                0.01.ph(context),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.mw * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rent Properties',
                        style: GoogleFonts.poppins(
                          fontSize: context.mh * 0.023,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RoutesNames.allRentPropertiesView,
                          );
                        },
                        child: Text(
                          'View All',
                          style: GoogleFonts.poppins(
                            fontSize: context.mh * 0.016,
                            fontWeight: FontWeight.w600,
                            color: AppColor.blueColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                0.01.ph(context),
                const RentPropertiesDisplayWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
