import 'package:my_app/screens/API_screen.dart';
import 'package:my_app/screens/DB_helper.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/login_page.dart';
import 'package:my_app/screens/notifikasi_screen.dart';
import 'package:my_app/screens/profile_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/detail_paket.dart';
import 'package:my_app/screens/routes/SecondScreen/custom_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/atur_paket.dart';
import 'package:my_app/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/sqlite.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:LoginPage(),
      routes: {
        '/second-screen':(context) => const SecondScreen(),
        '/custom-screen':(context) => const CustomScreen(),
        '/login_screen' :(context) => LoginPage(),
        '/home_screen':(context) => HomeScreen(title: 'kiky',),
        '/my_homepage':(context) => MyHomePage(title: 'kiky' ),
        '/notifikasi_page':(context) => NotifikasiPage(),
        '/detail_paket':(context)=> detail_paket(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(title: 'kiky',),
    SettingScreen(),
    NotifikasiPage(),
     ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'Settings',
    'Notifikasi',
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
     drawer: Drawer(
        child: Column(
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text('Komang Sri Ayu Rejeki'),
                  accountEmail: Text('2215091071'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/kiky.png'),
                  ),
                  decoration: BoxDecoration(color: Color.fromRGBO(4, 73, 153, 1)),
                ),
                const Divider(height: 10),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log Out'),
                  onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                      (route) => false),
                ),
                ListTile(
                  leading: Icon(Icons.api),
                  title: Text('Latihan API'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const APIscreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.create),
                  title: Text('Latihan CRUD SQLite'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SQLiteScreen()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromRGBO(4, 73, 153, 1),
        selectedItemColor: Color.fromRGBO(4, 73, 153, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}