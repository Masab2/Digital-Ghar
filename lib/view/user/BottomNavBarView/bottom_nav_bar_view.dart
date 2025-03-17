import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/view/user/Contractors/contractors_view.dart';
import 'package:digital_ghar/view/view.dart';
import 'package:digital_ghar/viewModel/BottomNavBarViewModel/bottom_nav_bar_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class CustomizedBottomNavBar extends StatefulWidget {
  const CustomizedBottomNavBar({super.key});

  @override
  State<CustomizedBottomNavBar> createState() => _CustomizedBottomNavBarState();
}

class _CustomizedBottomNavBarState extends State<CustomizedBottomNavBar> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavBarViewModel(),
      child: Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        body: Consumer<BottomNavBarViewModel>(
          builder: (context, viewModel, child) {
            return PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(), // Disable sliding
              children: const [
                HomeView(),
                ContractorsView(),
                Scaffold(),
                Scaffold(),
                ProfileView(),
              ],
            );
          },
        ),
        bottomNavigationBar: const _MainWrapperBottomNavBar(
          "Home",
          "Contractors",
          "Design",
          "Chat",
          "Profile",
        ),
      ),
    );
  }
}

class _MainWrapperBottomNavBar extends StatelessWidget {
  final String home, favorites, messages, profile, design;

  const _MainWrapperBottomNavBar(
    this.home,
    this.favorites,
    this.messages,
    this.profile,
    this.design,
  );

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarViewModel>(
      builder: (context, viewModel, child) {
        final currentPage = viewModel.currentIndex;
        return BottomAppBar(
          color: AppColor.whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.mw * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _bottomAppBarItem(
                        context,
                        defaultIcon: IconlyLight.home,
                        page: 0,
                        label: "Home",
                        filledIcon: IconlyBold.home,
                        currentPage: currentPage,
                      ),
                      _bottomAppBarItem(
                        context,
                        defaultIcon: IconlyLight.work,
                        page: 1,
                        label: "Contractors",
                        filledIcon: IconlyBold.work,
                        currentPage: currentPage,
                      ),
                      _bottomAppBarItem(
                        context,
                        defaultIcon: IconlyLight.edit_square,
                        page: 2,
                        label: "Design",
                        filledIcon: IconlyBold.editSquare,
                        currentPage: currentPage,
                      ),
                      _bottomAppBarItem(
                        context,
                        defaultIcon: IconlyLight.profile,
                        page: 4,
                        label: "Profile",
                        filledIcon: IconlyBold.profile,
                        currentPage: currentPage,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _bottomAppBarItem(
    BuildContext context, {
    required IconData defaultIcon,
    required int page,
    required String label,
    required IconData filledIcon,
    required int currentPage,
  }) {
    return GestureDetector(
      onTap: () {
        context.read<BottomNavBarViewModel>().changeIndex(page);
        final pageController = context
            .findAncestorStateOfType<_CustomizedBottomNavBarState>()
            ?._pageController;
        pageController?.jumpToPage(page);
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            0.004.ph(context),
            Icon(
              currentPage == page ? filledIcon : defaultIcon,
              color:
                  currentPage == page ? AppColor.blueColor : AppColor.greyColor,
              size: context.mh * 0.029,
            ),
            0.003.ph(context),
            Text(
              label,
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.012,
                color: currentPage == page
                    ? AppColor.blueColor
                    : AppColor.greyColor,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
