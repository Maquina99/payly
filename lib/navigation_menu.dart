import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:payly_test/features/profile/profile_page.dart';
import 'package:payly_test/features/maps/maps.dart';
import 'package:payly_test/utils/constants/colors.dart';
import 'package:payly_test/utils/helpers/helper_functions.dart';
import 'package:payly_test/features/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = YHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          color: darkMode ? YColors.black : YColors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              rippleColor: darkMode ? YColors.primary : YColors.secondary,
              backgroundColor: darkMode ? YColors.black : YColors.white,
              tabBackgroundColor: darkMode ? YColors.secondary : YColors.primary,
              tabActiveBorder: Border.all(color: Colors.black, width: 0.001),
              curve: Curves.easeIn,
              padding: const EdgeInsets.all(5),
              iconSize: 26,
              selectedIndex: controller.selectedIndex.value,
              onTabChange: (index) => controller.selectedIndex.value = index,
              tabs: const [
                GButton(gap: 8, icon: Iconsax.calendar, text: 'Inicio'),
                GButton(gap: 8, icon: Iconsax.bus, text: 'Recorrido'), 
                GButton(gap: 8, icon: Iconsax.user, text: 'Perfil'),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 1.obs;

  final screens = [const HomeScreen(), const MapsPage(), const ProfilePage()];
}
