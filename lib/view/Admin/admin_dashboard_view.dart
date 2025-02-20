import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';

class AdminDashboardView extends StatelessWidget {
  const AdminDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.mw * 0.05,
            vertical: context.mh * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(context),
              0.02.ph(context),
              _buildStatsGrid(context),
              0.03.ph(context),
              _buildSectionTitle(context, 'Recent Properties'),
              0.02.ph(context),
              _buildPropertyList(context),
              0.03.ph(context),
              _buildSectionTitle(context, 'Active Contractors'),
              0.02.ph(context),
              _buildContractorsList(context),
              0.03.ph(context),
              _buildSectionTitle(context, 'LAD Approved Designs'),
              0.02.ph(context),
              _buildDesignsList(context),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.blueColor,
        child: const Icon(IconlyBold.plus, color: AppColor.whiteColor),
        onPressed: () => _showAddOptionsDialog(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.whiteColor,
      elevation: 0,
      title: Text(
        'Admin Dashboard',
        style: GoogleFonts.aBeeZee(
          color: Colors.black,
          fontSize: context.mh * 0.024,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(IconlyLight.notification, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(IconlyLight.filter, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.04),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: const Icon(IconlyLight.search, color: AppColor.greyColor),
          hintText: 'Search properties, contractors...',
          hintStyle: GoogleFonts.aBeeZee(
            color: AppColor.greyColor,
            fontSize: context.mh * 0.016,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildStatsGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: context.mh * 0.02,
      crossAxisSpacing: context.mw * 0.04,
      childAspectRatio: 1.5,
      children: [
        _buildStatCard(
          context,
          'Total Properties',
          '156',
          IconlyBold.home,
          AppColor.blueColor,
        ),
        _buildStatCard(
          context,
          'Active Contractors',
          '45',
          IconlyBold.work,
          Colors.green,
        ),
        _buildStatCard(
          context,
          'Pending Approvals',
          '12',
          IconlyBold.tick_square,
          Colors.orange,
        ),
        _buildStatCard(
          context,
          'Total Revenue',
          '₹1.2M',
          IconlyBold.wallet,
          Colors.purple,
        ),
      ],
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: EdgeInsets.all(context.mw * 0.04),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: color, size: context.mh * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: GoogleFonts.aBeeZee(
                  fontSize: context.mh * 0.024,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              Text(
                title,
                style: GoogleFonts.aBeeZee(
                  fontSize: context.mh * 0.014,
                  color: AppColor.greyColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: GoogleFonts.aBeeZee(
        fontSize: context.mh * 0.022,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }

  Widget _buildPropertyList(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.withOpacity(0.2),
          height: 1,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: context.mw * 0.12,
              height: context.mw * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/100'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              'Luxury Villa ${index + 1}',
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.016,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Bhopal, MP',
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.014,
                color: AppColor.greyColor,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(IconlyLight.more_circle),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }

  Widget _buildContractorsList(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.withOpacity(0.2),
          height: 1,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: context.mw * 0.05,
              backgroundColor: AppColor.blueColor.withOpacity(0.1),
              child: Icon(
                IconlyBold.profile,
                color: AppColor.blueColor,
                size: context.mw * 0.05,
              ),
            ),
            title: Text(
              'John Doe ${index + 1}',
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.016,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Interior Designer',
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.014,
                color: AppColor.greyColor,
              ),
            ),
            trailing: Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.mw * 0.02,
                vertical: context.mh * 0.005,
              ),
              decoration: BoxDecoration(
                color: AppColor.blueColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Active',
                style: GoogleFonts.aBeeZee(
                  color: AppColor.blueColor,
                  fontSize: context.mh * 0.014,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDesignsList(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.withOpacity(0.2),
          height: 1,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              padding: EdgeInsets.all(context.mw * 0.02),
              decoration: BoxDecoration(
                color: AppColor.blueColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                IconlyBold.document,
                color: AppColor.blueColor,
                size: context.mw * 0.05,
              ),
            ),
            title: Text(
              'Modern House Design ${index + 1}',
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.016,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Approved on Feb 21, 2024',
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.014,
                color: AppColor.greyColor,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(IconlyLight.download),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }

  void _showAddOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(context.mw * 0.04),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add New',
                style: GoogleFonts.aBeeZee(
                  fontSize: context.mh * 0.022,
                  fontWeight: FontWeight.w500,
                ),
              ),
              0.02.ph(context),
              _buildAddOption(
                context,
                'Add Property',
                IconlyBold.home,
                () => Navigator.pop(context),
              ),
              _buildAddOption(
                context,
                'Add Contractor',
                IconlyBold.work,
                () => Navigator.pop(context),
              ),
              _buildAddOption(
                context,
                'Upload Design',
                IconlyBold.upload,
                () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddOption(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: AppColor.blueColor),
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.016,
        ),
      ),
      onTap: onTap,
    );
  }
}
