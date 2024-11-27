import 'package:flutter/material.dart';
import 'package:payly_test/utils/constants/image_strings.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/utils/constants/text_strings.dart';

class YLoginHeader extends StatelessWidget {
  const YLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const Image(
              height: 250,
              image: AssetImage(Yimages.darkAppLogo),
            ),
            Column(
              children: [
                const SizedBox(height: 225),
                Text(
                  Ytexts.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: YSizes.sm,
                ),
                Text(
                  Ytexts.loginSubTitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
