import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)? TColors.darkerGrey: TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        ///Title Price And Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(title: 'UltraTech'),
              const Flexible(child: TProductTitleText(title: 'UltraTech Cement 50KG Pack', maxLines: 1,)),
              ///attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text:'Variant: ',style: Theme.of(context).textTheme.bodySmall,),
                        TextSpan(text:'Premium ',style: Theme.of(context).textTheme.bodyLarge,),
                        TextSpan(text:'Size: ',style: Theme.of(context).textTheme.bodySmall,),
                        TextSpan(text:'50kg  ',style: Theme.of(context).textTheme.bodyLarge,),

                      ]

                  ))
            ],
          ),
        )
      ],

    );
  }
}