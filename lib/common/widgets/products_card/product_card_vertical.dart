import 'package:flutter/material.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/widgets/icon/t_circular_icon.dart';
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
  final double? width;

  const TProductCardVertical({
    super.key,
    this.dark = false,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final cardWidth = width ?? 180;
    final imageHeight = cardWidth * 0.9; // Maintain aspect ratio

    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Thumbnail with tags and buttons
          Container(
            width: double.infinity,
            height: imageHeight,
            decoration: BoxDecoration(
              color: dark ? TColors.dark : TColors.lightGrey,
              borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            ),
            child: Stack(
              alignment: Alignment.center, // Center all stack children
              children: [
                /// Main Product Image - Now properly centered
                const Padding(
                  padding: EdgeInsets.all(TSizes.sm),
                  child: TRoundedImage(
                    imageUrl: TImages.productImage5,
                    applyImageRadius: true,
                    fit: BoxFit.contain,
                  ),
                ),

                /// Sale Tag
                Positioned(
                  top: TSizes.sm,
                  left: TSizes.sm,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child: Text(
                      '10% Off',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),

                /// Favorite Icon Button
                const Positioned(
                  top: TSizes.sm,
                  right: TSizes.sm,
                  child: TCircularIcon(
                    icon: Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),

          /// Product Details
          Padding(
            padding: const EdgeInsets.only(left: TSizes.xs),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Product Title
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: cardWidth - TSizes.md),
                  child: const TProductTitleText(
                    title: 'Tractor Emulsion 1L pack',
                    maxLines: 2,
                    smallSize: false,
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 4),

                /// Brand Name with Verification
                const TBrandTitleWithVerifiedIcon(
                  title: 'Asian Paints',
                  brandTextSize: TextSizes.medium,
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2),

                /// Price and Add to Cart Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Price
                    Flexible(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: cardWidth * 0.6),
                        child: const TProductPriceText(
                          price: '240',
                          isLarge: true,
                        ),
                      ),
                    ),

                    /// Add to Cart Button
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius),
                        ),
                      ),
                      child: const SizedBox(
                        width: TSizes.iconLg * 1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Center(
                          child: Icon(Icons.add, color: TColors.white),
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
    );
  }
}