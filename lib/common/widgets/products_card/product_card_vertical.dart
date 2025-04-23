import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../images/t_rounded_image.dart';
import '../texts/product_price_text.dart';
import '../texts/product_title_text.dart';
import '../texts/t_brand_title_text_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  final bool dark;

  const TProductCardVertical({super.key, this.dark = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 298,
      decoration: BoxDecoration(
        color: TColors.lightContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView( // ✅ Wrap in scroll view to prevent overflow
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: TColors.lightGrey,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  const TRoundedImage(
                    imageUrl: TImages.productImage4,
                    applyImageRadius: true,
                  ),

                  // Add your image or stack content here
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TProductTitleText(title: 'Ambani Bricks', smallSize: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Acc Cement', brandTextSize: TextSizes.large),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TProductPriceText(price: '24000'),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: const Center(
                            child: Icon(Icons.add, color: TColors.light),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



