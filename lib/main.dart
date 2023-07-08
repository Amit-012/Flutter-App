import 'package:flutter/material.dart';
import 'package:flutter_ui_app_design/screens/home_screen.dart';
import 'package:flutter_ui_app_design/screens/profile_screen.dart';
import 'package:flutter_ui_app_design/screens/submission_screen.dart';
import 'package:flutter_ui_app_design/utils/constaints.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,

        // routes
        initialRoute: "/",
        routes: {
          "/": (context) => const MyNavigationBar(),
        });
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProfileScreen(),
    SubmissionScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GNav(
        rippleColor: textColor,
        hoverColor: textColor,
        activeColor: textColor,
        tabBackgroundColor: containerColor,
        color: textColor,
        gap: 8,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),
        tabs: const [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: LineIcons.user,
            text: 'Profile',
          ),
          GButton(
            icon: LineIcons.barChartAlt,
            text: 'Leaderboard',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
