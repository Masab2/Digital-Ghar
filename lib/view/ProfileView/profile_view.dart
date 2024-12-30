import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // User Profile Header
          UserAccountsDrawerHeader(
            accountName: const Text('Masab Haider',
                style: TextStyle(color: Colors.white)),
            accountEmail: const Text('masabhaider4@gmail.com',
                style: TextStyle(color: Colors.white70)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                IconlyBold.profile,
                color: Colors.black87,
                size: context.mw * 0.08,
              ),
            ),
            decoration: const BoxDecoration(
              color: AppColor.blueColor,
            ),
          ),

          // Options List
          Expanded(
            child: ListView(
              children: [
                // Profile
                ListTile(
                  leading:
                      const Icon(IconlyBold.profile, color: AppColor.blueColor),
                  title: Text(
                    'Profile',
                    style: TextStyle(fontSize: context.mh * 0.018),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navigate to Profile Screen
                  },
                ),
                const Divider(),

                // Bookmarks
                ListTile(
                  leading: const Icon(IconlyBold.bookmark,
                      color: AppColor.blueColor),
                  title: Text(
                    'Bookmarks',
                    style: TextStyle(fontSize: context.mh * 0.018),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navigate to Bookmarks Screen
                  },
                ),
                const Divider(),

                // Chat
                ListTile(
                  leading:
                      const Icon(IconlyBold.chat, color: AppColor.blueColor),
                  title: Text(
                    'Chat',
                    style: TextStyle(fontSize: context.mh * 0.018),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navigate to Chat Screen
                  },
                ),
                const Divider(),

                // Appointments
                ListTile(
                  leading: const Icon(IconlyBold.calendar,
                      color: AppColor.blueColor),
                  title: Text(
                    'Appointments',
                    style: TextStyle(fontSize: context.mh * 0.018),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navigate to Appointments Screen
                  },
                ),
                const Divider(),

                // Logout
                ListTile(
                  leading: const Icon(IconlyBold.logout, color: Colors.red),
                  title: Text(
                    'Logout',
                    style: TextStyle(fontSize: context.mh * 0.018),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Handle Logout
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
