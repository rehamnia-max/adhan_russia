import 'package:adan_russia/constatnts.dart';
import 'package:adan_russia/controllers.dart';
import 'package:adan_russia/screens/about_page.dart';
import 'package:adan_russia/screens/choice_screen.dart';

import 'package:adan_russia/screens/prayer_screen.dart';

import 'package:adan_russia/screens/settings.dart';
import 'package:adan_russia/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  final BottomNavigationController _controller =
      Get.put(BottomNavigationController());
  // Initialize the controller
  final List<Widget> pages = [
    const PrayerScreen(),
    SettingsScreen(),
    ChoiceScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[_controller.selectedIndex.value]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MAIN_COLOR,
        enableFeedback: true,
        selectedItemColor: Colors.black,
        elevation: 5.0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'home'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.settings,
            ),
            label: "settings".tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.edit_notifications_rounded),
            label: 'about'.tr,
          ),
        ],
        currentIndex: _controller.selectedIndex.value,
        onTap: (index) {
          setState(() {
            _controller.changePage(index);
          });
        },
      ),
    );
  }
}
