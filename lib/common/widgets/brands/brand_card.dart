import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../styles/rounded_container.dart';
import '../images/t_circular_image.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align items to start
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- Logo with proper sizing and centering
            SizedBox(
              width: 50, // Fixed container size
              height: 50,
              child: Center( // Centers the image both horizontally and vertically
                child: AspectRatio(
                  aspectRatio: 1, // Ensures perfect circle
                  child: TCircularImage(
                    isNetworkImage: false,
                    image: TImages.accLogo,
                    backgroundColor: Colors.transparent,
                    overlayColor: isDark ? TColors.white : TColors.black,
                    fit: BoxFit.contain, // Ensures image fits within bounds
                  ),
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),

            /// -- Brand Title
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Acc Cement',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '25 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}