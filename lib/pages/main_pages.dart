import 'package:flutter/material.dart';
import 'package:praktikum_6/styles/color.dart';
import 'package:praktikum_6/styles/text_styles.dart';

import 'home/branda.dart';
import 'target/target.dart';
import 'saya/saya.dart';
import 'bantuan/bantuan.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const nameRoute = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    branda(),
    target(),
    bantuan(),
    saya(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: pages[_selectedIndex],
      bottomNavigationBar: _customBottomNav(),
    );
  }

  Widget _customBottomNav() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          boxShadow: [BoxShadow(color: kGrey, blurRadius: 10)]),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedLabelStyle: kCaption,
          unselectedLabelStyle: kCaption,
          selectedItemColor: kBlueRibbon,
          unselectedItemColor: kDarkGray,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  width: 24,
                  color: _selectedIndex == 0 ? kBlueRibbon : kDarkGray,
                ),
                label: 'Branda'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/portofolio.png',
                  width: 24,
                  color: _selectedIndex == 1 ? kBlueRibbon : kDarkGray,
                ),
                label: 'Target'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/support.png',
                  width: 24,
                  color: _selectedIndex == 2 ? kBlueRibbon : kDarkGray,
                ),
                label: 'Bantuan'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/profile.png',
                  width: 24,
                  color: _selectedIndex == 3 ? kBlueRibbon : kDarkGray,
                ),
                label: 'Saya'),
          ],
        ),
      ),
    );
  }
}
