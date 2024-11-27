import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payly_test/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:payly_test/utils/constants/colors.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/utils/device/device_utility.dart';
import 'package:payly_test/utils/helpers/helper_functions.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        final OnboardingController controller = Get.find(); // Get the controller instance
    final dark = YHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: YDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: YSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? YColors.primary: YColors.primary,
          dotHeight: 6,
        ),
      ),
    );
  }
}
