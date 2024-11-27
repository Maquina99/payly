import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX
import 'package:payly_test/common/api_functions/supabase_variable.dart';
import 'package:payly_test/utils/constants/colors.dart';

class YExitButton extends StatelessWidget {
  const YExitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Call the sign out method
        supabase.auth.signOut().then((_) {
          // Navigate to the login screen using GetX
          Get.toNamed('/login');
        }).catchError((error) {
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
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Button color
        foregroundColor: Colors.white, // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
      ),
      child: const Text('Sign Out'),
    );
  }
}
