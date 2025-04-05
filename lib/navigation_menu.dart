import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  static const Color primary = Color(0xff96da0f);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          indicatorColor: Colors.black.withOpacity(0.1),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              selectedIcon: Icon(Iconsax.home, color: primary),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              selectedIcon: Icon(Iconsax.shop, color: primary),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              selectedIcon: Icon(Iconsax.heart, color: primary),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              selectedIcon: Icon(Iconsax.user, color: primary),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.yellow),
  ];
}