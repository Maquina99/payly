import 'package:flutter/material.dart';
import 'package:payly_test/common/styles/spacing_styles.dart';

import 'package:payly_test/features/authentication/screens/login/widgets/login_form.dart';
import 'package:payly_test/features/authentication/screens/login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title & Subtitle
              YLoginHeader(),

              /// Form
              YLoginForm(),

              ///Divider
              ///YFormDivider(dividerText: Ytexts.orSignInWith.capitalize!),
              ///const SizedBox(height: YSizes.spaceBtwItems,),

              ///Footer
              ///const YSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

