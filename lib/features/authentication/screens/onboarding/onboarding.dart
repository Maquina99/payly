import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payly_test/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:payly_test/utils/constants/image_strings.dart';
import 'package:payly_test/utils/constants/text_strings.dart';
import 'package:payly_test/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:payly_test/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:payly_test/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:payly_test/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const onboardingPages = [
      OnboardingPage(
        image: Yimages.onboardingImage1,
        title: Ytexts.onBoardingTitle1,
        subTitle: Ytexts.onBoardingSubTitle1,
      ),
      OnboardingPage(
        image: Yimages.onboardingImage2,
        title: Ytexts.onBoardingTitle2,
        subTitle: Ytexts.onBoardingSubTitle2,
      ),
      OnboardingPage(
        image: Yimages.onboardingImage3,
        title: Ytexts.onBoardingTitle3,
        subTitle: Ytexts.onBoardingSubTitle3,
      ),
      // Add more pages as needed
    ];

    final controller = Get.put(OnboardingController(pageCount: onboardingPages.length));

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: onboardingPages,
          ),
          const OnboardingSkip(),
          const OnboardingDotNavigation(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
