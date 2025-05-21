import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/widgets/products/rating/rating_indicator.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.user)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Sujal Sharma', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: dark ? TColors.white : TColors.dark,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Review Rating Row
        Row(
          children: [
            const TRatingBarIndicator(rating: 3.8),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              '28 Apr, 2025',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// User Review ReadMore
        ReadMoreText(
          'The Caspian app boasts a modern, clean, and intuitive interface with a well-thought-out color scheme and smooth animations. Navigation is seamless, and the layout ensures key features are easily accessible. A visually pleasing and user-friendly design that enhances the overall experience.(If you have specific feedback—like dark mode support, typography, or responsiveness—feel free to add it!)',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read More',
          trimExpandedText: 'Read Less',
          style: TextStyle(
            color: dark ? TColors.white : TColors.dark,
          ),
          moreStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Company Review Container
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Asian Paints',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '28 Apr, 2025',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                ReadMoreText(

                  'Thanks for your feedback, Sir!)',
                  style: TextStyle(
                    color: dark ? TColors.white : TColors.dark,
                  ),
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read More',
                  trimExpandedText: 'Read Less',
                  moreStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                  lessStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}