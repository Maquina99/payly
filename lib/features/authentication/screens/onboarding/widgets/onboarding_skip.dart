import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payly_test/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find(); // Get the controller instance

    return Positioned(
      top: YDeviceUtils.getAppBarHeight(),
      right: YSizes.defaultSpace,
      child: TextButton(
        onPressed: () => controller.skipPage(), // Use the controller instance
        child: const Text('Skip'),
      ),
    );
  }
}
