import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payly_test/utils/constants/image_strings.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/utils/constants/text_strings.dart';
import 'package:payly_test/utils/helpers/helper_functions.dart';
import 'package:payly_test/features/authentication/screens/login/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(YSizes.defaultSpace),
            child: Column(
              children: [
                /// Image
                Image(
                  image: const AssetImage(Yimages.darkAppLogo),
                  width: YHelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: YSizes.spaceBtwSections),

                /// Title and SubTitle
                Text(Ytexts.changeYourPasswordTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: YSizes.spaceBtwItems),
                Text(Ytexts.changeYourPasswordSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: YSizes.spaceBtwSections),

                /// Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.offAll(() => const LoginScreen()), child: const Text(Ytexts.done)),
                ),
                const SizedBox(height: YSizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        Ytexts.resendEmail,
                        style: Theme.of(context).textTheme.bodyMedium ,
                      )),
                ),
              ],
            )),
      ),
    );
  }
}
