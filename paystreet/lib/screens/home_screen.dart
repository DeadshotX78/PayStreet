import 'package:flutter/material.dart';
import 'package:paystreet/screens/main_screen.dart';
import 'package:paystreet/screens/record_screen.dart';
import 'package:paystreet/screens/user_screen.dart';
import 'package:paystreet/screens/wallet_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> pages = [
    const MainScreen(),
    const UserScreen(),
    const RecordScreen(),
    const WalletScreen(),
  ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.account_balance_wallet_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.bar_chart_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person_outline),
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
