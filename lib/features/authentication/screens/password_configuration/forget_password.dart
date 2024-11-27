import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:payly_test/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(YSizes.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ///Headings
          Text(Ytexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: YSizes.spaceBtwItems),
          Text(Ytexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: YSizes.spaceBtwItems * 2),

          ///Text Field
          TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Iconsax.direct_right,
                  ),
                  labelText: Ytexts.user,
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
            ),
            const SizedBox(
              height: YSizes.spaceBtwInputFields,
            ),

          ///Submit Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to (()=> const ResetPassword()), child: const Text(Ytexts.submit)))
        ]),
      ),
    );
  }
}
