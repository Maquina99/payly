import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payly_test/common/api_functions/supabase_variable.dart';
import 'package:payly_test/utils/constants/colors.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';

Future<void> signInButtonPressed(BuildContext context, TextEditingController emailController, bool isMounted) async {
  try {
    final email = emailController.text.trim();
    await supabase.auth.signInWithOtp(email: email, emailRedirectTo: 'io.supabase.flutterquickstart://login-callback/', shouldCreateUser: false);

    if (isMounted) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Confirma tu acceso en tu correo electrónico'),
            content: const Text('Por favor revisa tu maldito inbox pendejo!'),
            actions: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  } on AuthException catch (error) {
    // ignore: use_build_context_synchronously
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(error.message),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('OK'),
            ),
          ],
          backgroundColor: YColors.error,
        );
      },
    );
  } catch (error) {
    // ignore: use_build_context_synchronously
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: const Text('Error ocurred, please retry'),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('OK'),
            ),
          ],
          backgroundColor: YColors.error,
        );
      },
    );
  }
}



