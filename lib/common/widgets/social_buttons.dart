import 'package:flutter/material.dart';
import 'package:payly_test/utils/constants/colors.dart';
import 'package:payly_test/utils/constants/image_strings.dart';
import 'package:payly_test/utils/constants/sizes.dart';

class YSocialButtons extends StatelessWidget {
  const YSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: YColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: YSizes.iconMd,
              height: YSizes.iconMd,
              image: AssetImage(Yimages.googleLogo),
            ),
          ),
        ),
        const SizedBox(
          width: YSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: YColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: YSizes.iconMd,
              height: YSizes.iconMd,
              image: AssetImage(Yimages.facebookLogo),
            ),
          ),
        ),
      ],
    );
  }
}