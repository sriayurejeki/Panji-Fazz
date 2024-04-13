import 'package:flutter/material.dart';
import 'package:my_app/screens/profile_screen.dart';

void main() {
  runApp(const SettingScreen());
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(6, 2, 2, 1), 
        scaffoldBackgroundColor: const Color.fromRGBO(4, 73, 153, 1), 
      ),
      home: Scaffold(
        body: ListView(
          children: [
            _buildSettingItem(
              title: 'Pengaturan Akun',
              icon: Icons.account_circle,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              },
            ),
            _buildSettingItem(
              title: 'Pengaturan Pembelian',
              icon: Icons.shopping_cart,
              onTap: () {
              },
            ),
            _buildSettingItem(
              title: 'Pengaturan Privasi',
              icon: Icons.lock,
              onTap: () {
              },
            ),
            _buildSettingItem(
              title: 'Pengaturan Aplikasi',
              icon: Icons.settings,
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white, 
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
        onTap: onTap,
      ),
    );
  }
}
