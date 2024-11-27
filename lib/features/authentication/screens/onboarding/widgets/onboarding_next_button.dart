import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payly_test/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:payly_test/utils/constants/colors.dart';
import 'package:payly_test/utils/helpers/helper_functions.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/utils/device/device_utility.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = YHelperFunctions.isDarkMode(context);
    final OnboardingController controller = Get.find(); // Get the controller instance


    return Positioned(
      right: YSizes.defaultSpace,
      bottom: YDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => controller.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? YColors.primary : YColors.primary,
        ),
         child: Transform.scale(
          scale: 1.5, // Adjust the scale factor to change the arrow size
          child: Icon(
            Icons.arrow_forward,
            color: dark ? Colors.black : Colors.black,
          ),
        ),
      ),
    );
  }
}