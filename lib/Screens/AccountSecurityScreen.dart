import 'package:flutter/material.dart';

class AccountSecurityScreen extends StatelessWidget {
  const AccountSecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Account Security',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Add security and settings options here
            _buildCardItem(
              icon: Icons.lock,
              title: 'Change Password',
              onTap: () {
                // Handle Change Password functionality here
              },
            ),
            const SizedBox(height: 10),
            _buildCardItem(
              icon: Icons.security,
              title: 'Two-Factor Authentication',
              onTap: () {
                // Handle Two-Factor Authentication functionality here
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create each card with ListItem inside it
  Widget _buildCardItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}