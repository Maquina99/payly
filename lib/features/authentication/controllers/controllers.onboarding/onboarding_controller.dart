import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payly_test/features/authentication/screens/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  final int pageCount;

  OnboardingController({required this.pageCount});

  /// Update the current page index when the page is changed.
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  /// Navigate to a specific page when a dot is clicked.
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  /// Navigate to the next page or navigate to the login screen if it's the last page.
  void nextPage() async {
     if (currentPageIndex.value == pageCount - 1) {
      // Set initScreen to 1 in SharedPreferences to indicate onboarding is complete
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('initScreen', 1);

      // Navigate to the login screen
      Get.offAll(() => const LoginScreen());
    } else {
      pageController.animateToPage(
        currentPageIndex.value + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  /// Skip to the last page.
  void skipPage() {
    currentPageIndex.value = pageCount - 1;
    pageController.animateToPage(
      pageCount - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
