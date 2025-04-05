import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    this.textColor=TColors.white,
    this.backgroundColor=TColors.white,
    required this.title,
    this.onTap,

  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
          child: Column(
            children: [
              Container(
                  width: 56,
                  height: 56,
                  padding: const EdgeInsets.only(right: TSizes.sm),
                  decoration: BoxDecoration(
                    color: backgroundColor ?? (dark ? TColors.black : TColors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child:  Center(
                    child: Image(
                      image: const AssetImage(TImages.furnitureIcon),
                      fit: BoxFit.cover,
                      color: dark ? TColors.light : TColors.dark,
                    ),
                  )),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              SizedBox(
                  width: 55,
                  child: Text(
                    'Furniture Category',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: TColors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  )),
            ],
          )),
    );
  }
}