import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import '../../../../../common/widgets/icon/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: dark? TColors.darkerGrey: TColors.light,
        child: Stack(
            children: [
              const SizedBox(
                height: 400, child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius),
                child: Center(
                    child: Image(image: AssetImage(TImages.productImage5))),
              ),
              ),

              ///Image Slider
              Positioned(
                right: 0,
                bottom: 20,
                left: TSizes.defaultSpace,

                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    separatorBuilder: (_, __) =>
                    const SizedBox(width: TSizes.spaceBtwItems,),
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) =>
                        TRoundedImage(
                            width: 80,
                            border: Border.all(color: TColors.primary),
                            padding: const EdgeInsets.all(TSizes.sm),
                            backgroundColor: dark ? TColors.darkerGrey : TColors
                                .light,
                            imageUrl: TImages.productImage5),
                  ),
                ),
              ),
              ///appbarIcon
              const TAppBar(
                showBackArrow: true,
                actions: [
                  TCircularIcon(icon: Iconsax.heart5,color: Colors.red)
                ],
              ) ,
            ]
        ),

      ),
    );
  }
}
