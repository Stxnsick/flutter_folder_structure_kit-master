import 'package:flutter/material.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../styles/shadows.dart';
import '../icon/t_circular_icon.dart';
class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Container(
        width: 310,
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
        color: dark ? TColors.dark : TColors.lightGrey,
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
    ),
      child: Row(
        children: [
          ///thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark? TColors.dark : TColors.light,
            child: Stack(
              children: [
                SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundedImage(imageUrl: TImages.productImage1)),
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child: Text(
                      '10%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ],
              
            ),
          ),
          ///Details
          Flexible(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(title: 'UltraTech cement',smallSize: true,),
                    SizedBox(height: TSizes.spaceBtwItems/2,),
                    TBrandTitleWithVerifiedIcon(title: 'UltraTech')

                  ]
                ),
                ),
              ],
            ),
          ),

        ]
      ),
    );
  }
}
