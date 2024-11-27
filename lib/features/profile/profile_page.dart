import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:payly_test/common/widgets/appbar/appbar.dart';
import 'package:payly_test/common/widgets/customer_shapes/containers/primary_header_container.dart';
import 'package:payly_test/common/widgets/customer_shapes/containers/section_heading.dart';
import 'package:payly_test/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:payly_test/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:payly_test/common/api_functions/supabase_variable.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/utils/constants/colors.dart';
import 'package:payly_test/utils/helpers/helper_functions.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = YHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            YPrimaryHeaderContainer(
                child: Column(
              children: [
                YAppBar(
                  showBackArrow: false,
                  title: Text(
                    'Cuenta',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: YColors.black),
                  ),
                ),

                ///Profile Card/ Inicio
                const YUserProfileTitle(),
                const SizedBox(
                  height: YSizes.spaceBtwSections,
                ),
              ],
            )),

            /// Body
            Padding(
              padding: const EdgeInsets.all(YSizes.defaultSpace),
              child: Column(
                children: [
                  ///Account settings
                  const YSectionHeading(
                    title: 'Configuracion de la cuenta',
                    showActionButton: false,
                  ),
                  const SizedBox(height: YSizes.spaceBtwItems),

                  YSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'Mis direcciones',
                    subTitle: 'Defina sus direcciones',
                    onTap: () {},
                    color: darkMode ? YColors.primary : YColors.secondary,
                  ),

                  YSettingsMenuTile(
                    icon: Iconsax.clock,
                    title: 'Mis horarios',
                    subTitle: 'Defina sus horarios',
                    onTap: () {},
                    color: darkMode ? YColors.primary : YColors.secondary,
                  ),

                  YSettingsMenuTile(
                    icon: Iconsax.call,
                    title: 'Contactos',
                    subTitle: 'Editar informacion de emergencia',
                    onTap: () {},
                    color: darkMode ? YColors.primary : YColors.secondary,
                  ),

                  YSettingsMenuTile(
                    color: darkMode ? YColors.primary : YColors.secondary,
                    icon: Iconsax.logout,
                    title: 'Cerrar Sesión',
                    subTitle:
                        'Presiona este botón para cerrar tu sesión en Navi',
                    onTap: () {
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
                              content:
                                  const Text('Error ocurred, please retry'),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
