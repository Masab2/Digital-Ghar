import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:flutter/material.dart';

class SelectAuthScreenView extends StatelessWidget {
  const SelectAuthScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Header(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            // Role Selection
            RoleCard(
              role: "Admin",
              icon: Icons.admin_panel_settings,
              color: Colors.blue,
              onPressed: () {},
            ),
            RoleCard(
              role: "Contractor",
              icon: Icons.construction,
              color: Colors.orange,
              onPressed: () {},
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.03),

            // Login & Register Buttons
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: context.mw * 0.05,
                    color: Colors.grey[300],
                    thickness: 1.5,
                    endIndent: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
                Text(
                  "For Users",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.015,
                    color: Colors.grey[600],
                  ),
                ),
                Expanded(
                  child: Divider(
                    endIndent: context.mw * 0.05,
                    color: Colors.grey[300],
                    thickness: 1.5,
                    indent: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const AuthButtons(),
          ],
        ),
      ),
    );
  }
}

// Header Component
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Select Your Role",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.03,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Text(
          "Choose your account type to proceed",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.018,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

// Role Selection Card Component
class RoleCard extends StatelessWidget {
  final String role;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const RoleCard(
      {super.key,
      required this.role,
      required this.icon,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.015),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ListTile(
          leading: Icon(icon,
              color: color, size: MediaQuery.of(context).size.height * 0.025),
          title: Text(
            role,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.020,
                fontWeight: FontWeight.w600),
          ),
          onTap: onPressed,
        ),
      ),
    );
  }
}

// Auth Buttons Component
class AuthButtons extends StatelessWidget {
  const AuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _AuthButton(
            text: "Login",
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, RoutesNames.loginView);
            }),
        _AuthButton(
            text: "Register",
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, RoutesNames.registerView);
            }),
      ],
    );
  }
}

// Common Auth Button
class _AuthButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const _AuthButton(
      {required this.text, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width * 0.42,
            MediaQuery.of(context).size.height * 0.06),
        maximumSize: Size(MediaQuery.of(context).size.width * 0.42,
            MediaQuery.of(context).size.height * 0.06),
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.015),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.022,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
