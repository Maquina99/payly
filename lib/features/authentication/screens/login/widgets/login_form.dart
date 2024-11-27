import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:payly_test/common/api_functions/supabase_variable.dart';
import 'package:payly_test/features/authentication/screens/login/widgets/auth_function.dart';
import 'package:payly_test/navigation_menu.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/utils/constants/text_strings.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';

class YLoginForm extends StatefulWidget {
  const YLoginForm({
    super.key,
  });

  @override
  State<YLoginForm> createState() => _YLoginForm();
}

class _YLoginForm extends State<YLoginForm> {
  final _emailController = TextEditingController();
  late final StreamSubscription<AuthState> _authSubcription;

  @override
  void initState() {
    super.initState();
    _authSubcription = supabase.auth.onAuthStateChange.listen((event) {
      final session = event.session;
      if (session != null) {
        Get.off(() => const NavigationMenu());
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _authSubcription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: YSizes.spaceBtwSections),
        child: Column(
          children: [
            const SizedBox(
              height: YSizes.spaceBtwSections*2,
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                floatingLabelStyle: Theme.of(context).textTheme.bodyMedium,
                  prefixIcon: const Icon(
                    Iconsax.direct_right,
                  ),
                  labelText: Ytexts.user,
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
            ),
            //const SizedBox(
            //  height: YSizes.spaceBtwInputFields,
            //),

            /// Password
            ///TextFormField(
            ///  decoration: InputDecoration(
            ///   prefixIcon: const Icon(
            ///      Iconsax.password_check,
            ///    ),
            ///   labelText: Ytexts.password,
            ///    suffixIcon: const Icon(Iconsax.eye_slash),
            ///    labelStyle:Theme.of(context).textTheme.bodyMedium,
            ///  ),
            ///),
            const SizedBox(
              height: YSizes.spaceBtwInputFields / 2,
            ),

            /// Remember Me & Forget Password
            ///Row(
            ///  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ///  children: [
                ///Remember me
            ///    Row(
            ///      children: [
            ///        Checkbox(value: true, onChanged: (value) {}),
            ///        const Text(Ytexts.rememberMe),
            ///      ],
            ///    ),

                ///Forget Password
            ///    TextButton(
            ///      onPressed: () => Get.to(() => const ForgetPassword()),
            ///      child: Text(Ytexts.forgetPassword, 
            ///            style:Theme.of(context).textTheme.bodyMedium),
            ///    ),
            ///  ],
            ///),
            const SizedBox(
              height: YSizes.spaceBtwSections,
            ),

            ///Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  await signInButtonPressed(context, _emailController, mounted);
                },
                child: const Text(Ytexts.signIn),
              ),
            ),
            const SizedBox(
              height: YSizes.spaceBtwItems,
            ),


            ///Create Account Button
            ///SizedBox(
            ///  width: double.infinity,
            ///  child: OutlinedButton(
            ///    onPressed: () {},
            ///    child: const Text(Ytexts.createAccount),
            ///  ),
            ///),

          ],
        ),
      ),
    );
  }
}