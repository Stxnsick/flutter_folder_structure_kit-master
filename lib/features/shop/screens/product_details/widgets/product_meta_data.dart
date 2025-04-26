import 'package:flutter/material.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
    // Add your parameters here
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding:  EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,),
                child: Text('25% Off',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black,),
              )
              ),
            const SizedBox(width: TSizes.spaceBtwItems,),

            ///  Price
            Text('\₹300', style: Theme.of(context).textTheme.titleSmall!.apply(decoration:TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TProductPriceText(price: '240',isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// Title
        TProductTitleText(title: 'Tractor Emulsion 1L pack',),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),

        /// Stock Status
        Row(
          children: [
            TProductTitleText(title: 'Status',),
            const SizedBox(width: TSizes.spaceBtwItems/2,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium?.apply(color:TColors.primary)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        /// Brand
        Row(
          children: [
            TCircularImage(image: TImages.cosmeticsIcon,
            width: 32,
            height: 32,
            overlayColor: darkMode? TColors.white: TColors.black,),
            TBrandTitleWithVerifiedIcon(title: 'Asian Paints',brandTextSize: TextSizes.large,),
          ],
        )
      ],
    );
  }
}