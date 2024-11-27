
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:payly_test/common/widgets/images/circular_image.dart';
import 'package:payly_test/utils/constants/colors.dart';
import 'package:payly_test/utils/constants/image_strings.dart';
import 'package:payly_test/utils/helpers/helper_functions.dart';

class YUserProfileTitle extends StatelessWidget {
  const YUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = YHelperFunctions.isDarkMode(context);

    return ListTile(
      leading: YRoundedImage(
        imageURL: Yimages.darkAppLogo,
        width: 50,
        height: 50,
        backgroundColor: darkMode ? YColors.black : YColors.white,
      ),
      title: Text('Julio Medrano',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: YColors.black)),
      subtitle: Text('correo@email.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: YColors.black)),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: YColors.black,)),        
    );
  }
}