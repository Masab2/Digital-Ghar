import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/config/widgets/AdminDashboardWidgets/admin_dash_board_body_widget.dart';
import 'package:digital_ghar/config/widgets/AdminDashboardWidgets/admin_dashboard_app_bar_widget.dart';
import 'package:digital_ghar/viewModel/ContractorProfileViewModel/contractor_profile_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:provider/provider.dart';

class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({super.key});

  @override
  State<AdminDashboardView> createState() => _AdminDashboardViewState();
}

class _AdminDashboardViewState extends State<AdminDashboardView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ContractorProfileViewmodel>(context, listen: false)
          .getContractorProfileApi();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AdminAppBar(),
      body: SafeArea(child: AdminDashboardBody()),
      floatingActionButton: AdminFloatingActionButton(),
    );
  }
}

class AdminFloatingActionButton extends StatelessWidget {
  const AdminFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColor.blueColor,
      child: const Icon(IconlyBold.plus, color: AppColor.whiteColor),
      onPressed: () => _showAddOptionsDialog(context),
    );
  }

  void _showAddOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AdminAddDialog(),
    );
  }
}

class AdminAddDialog extends StatelessWidget {
  const AdminAddDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: context.mw * 0.9,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: EdgeInsets.all(context.mw * 0.04),
              decoration: BoxDecoration(
                color: AppColor.blueColor.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    IconlyBold.plus,
                    color: AppColor.blueColor,
                    size: context.mw * 0.06,
                  ),
                  SizedBox(width: context.mw * 0.03),
                  Text(
                    'Add New',
                    style: GoogleFonts.aBeeZee(
                      fontSize: context.mh * 0.022,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blueColor,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      color: AppColor.blueColor,
                      size: context.mw * 0.05,
                    ),
                  ),
                ],
              ),
            ),

            // Options
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: context.mh * 0.02,
                horizontal: context.mw * 0.04,
              ),
              child: Column(
                children: [
                  _AddOptionTile(
                    title: 'Add Property',
                    subtitle: 'List a new property for sale or rent',
                    icon: IconlyBold.home,
                    onTap: () {
                      Navigator.pushNamed(
                          context, RoutesNames.addPropertiesForSellView);
                    },
                  ),
                  Divider(color: Colors.grey.withOpacity(0.1)),
                  _AddOptionTile(
                    title: 'Add Contractor',
                    subtitle: 'Register a new contractor',
                    icon: IconlyBold.work,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(
                          context, RoutesNames.addContractorProfileView);
                    },
                  ),
                  Divider(color: Colors.grey.withOpacity(0.1)),
                  _AddOptionTile(
                    title: 'Upload Design',
                    subtitle: 'Add new LAD approved design',
                    icon: IconlyBold.document,
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              padding: EdgeInsets.all(context.mw * 0.04),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.05),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.aBeeZee(
                        color: AppColor.greyColor,
                        fontSize: context.mh * 0.016,
                      ),
                    ),
                  ),
                  SizedBox(width: context.mw * 0.02),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.blueColor,
                      foregroundColor: AppColor.whiteColor,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(
                        horizontal: context.mw * 0.04,
                        vertical: context.mh * 0.015,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Add New',
                      style: GoogleFonts.aBeeZee(
                        fontSize: context.mh * 0.016,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddOptionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _AddOptionTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: context.mh * 0.015,
          horizontal: context.mw * 0.02,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(context.mw * 0.025),
              decoration: BoxDecoration(
                color: AppColor.blueColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: AppColor.blueColor,
                size: context.mw * 0.055,
              ),
            ),
            SizedBox(width: context.mw * 0.03),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.aBeeZee(
                      fontSize: context.mh * 0.018,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: context.mh * 0.005),
                  Text(
                    subtitle,
                    style: GoogleFonts.aBeeZee(
                      fontSize: context.mh * 0.014,
                      color: AppColor.greyColor,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              IconlyLight.arrow_right_2,
              color: AppColor.greyColor,
              size: context.mw * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
