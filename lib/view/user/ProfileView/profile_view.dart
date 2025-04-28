import 'package:digital_ghar/config/Global/gobal.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/viewModel/AuthViewModel/register_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterViewModel>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // Custom Profile Header
              Container(
                padding: EdgeInsets.only(
                  top: context.mh * 0.04,
                  bottom: context.mh * 0.03,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x0D000000),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // App Bar
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.mw * 0.06),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style: GoogleFonts.poppins(
                              fontSize: context.mh * 0.024,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF2D3748),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Settings action
                            },
                            icon: const Icon(
                              IconlyLight.setting,
                              color: Color(0xFF2D3748),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: context.mh * 0.02),

                    // Profile Picture
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: context.mh * 0.12,
                          width: context.mh * 0.12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF4F80FF),
                                Color(0xFF2F5BFF),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.blueColor.withOpacity(0.3),
                                blurRadius: 15,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Icon(
                            IconlyBold.profile,
                            color: Colors.white,
                            size: context.mw * 0.07,
                          ),
                        ),
                        Container(
                          height: context.mh * 0.035,
                          width: context.mh * 0.035,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const Icon(
                            IconlyBold.edit,
                            color: AppColor.blueColor,
                            size: 14,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: context.mh * 0.015),

                    // User Info
                    Text(
                      userName,
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.022,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2D3748),
                      ),
                    ),
                    SizedBox(height: context.mh * 0.004),
                    Text(
                      email,
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.015,
                        color: const Color(0xFF718096),
                      ),
                    ),

                    SizedBox(height: context.mh * 0.02),

                    // User Stats
                  ],
                ),
              ),

              SizedBox(height: context.mh * 0.025),

              // Profile Menu Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.mw * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Settings",
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.016,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF718096),
                      ),
                    ),
                    SizedBox(height: context.mh * 0.015),

                    // Menu Items
                    _buildMenuCard(
                      context,
                      icon: IconlyBold.profile,
                      title: "Edit Profile",
                      subtitle: "Update your information",
                      iconColor: const Color(0xFF4F80FF),
                      onTap: () {
                        // Navigate to Edit Profile
                      },
                    ),

                    _buildMenuCard(
                      context,
                      icon: IconlyBold.bookmark,
                      title: "Bookmarks",
                      subtitle: "Your saved designs",
                      iconColor: const Color(0xFF38B2AC),
                      onTap: () {
                        // Navigate to Bookmarks
                      },
                    ),

                    _buildMenuCard(
                      context,
                      icon: IconlyBold.chat,
                      title: "Messages",
                      subtitle: "Chat with AI",
                      iconColor: const Color(0xFF805AD5),
                      badgeCount: 3,
                      onTap: () {
                        // Navigate to Chat
                      },
                    ),

                    _buildMenuCard(
                      context,
                      icon: IconlyBold.calendar,
                      title: "Quatation Requests",
                      subtitle: "Your quatation requests",
                      iconColor: const Color(0xFFED8936),
                      onTap: () {

                      },
                    ),

                    SizedBox(height: context.mh * 0.025),

                    Text(
                      "More Options",
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.016,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF718096),
                      ),
                    ),
                    SizedBox(height: context.mh * 0.015),

                    _buildMenuCard(
                      context,
                      icon: IconlyBold.info_circle,
                      title: "Help & Support",
                      subtitle: "Get assistance and FAQs",
                      iconColor: const Color(0xFF4299E1),
                      onTap: () {
                        // Navigate to Help
                      },
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: context.mh * 0.025),
                      width: double.infinity,
                      height: context.mh * 0.06,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          controller.logout(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFF5F5),
                          foregroundColor: const Color(0xFFE53E3E),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: const Icon(IconlyBold.logout),
                        label: Text(
                          "Logout",
                          style: GoogleFonts.poppins(
                            fontSize: context.mh * 0.016,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color iconColor,
    int? badgeCount,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: context.mh * 0.015),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.mw * 0.04,
              vertical: context.mh * 0.018,
            ),
            child: Row(
              children: [
                // Icon Container
                Container(
                  height: context.mh * 0.05,
                  width: context.mh * 0.05,
                  decoration: BoxDecoration(
                    color: iconColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: context.mw * 0.05,
                  ),
                ),
                SizedBox(width: context.mw * 0.035),

                // Title and Subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: context.mh * 0.016,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF2D3748),
                        ),
                      ),
                      Text(
                        subtitle,
                        style: GoogleFonts.poppins(
                          fontSize: context.mh * 0.013,
                          color: const Color(0xFF718096),
                        ),
                      ),
                    ],
                  ),
                ),

                // Badge or Arrow
                if (badgeCount != null)
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.mw * 0.02,
                      vertical: context.mh * 0.004,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFE3A82),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      badgeCount.toString(),
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.012,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  )
                else
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFA0AEC0),
                    size: 16,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
