import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/rounded_container.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder:(_, __)=> const SizedBox(height: TSizes.spaceBtwItems,) ,
      itemBuilder: (_, index)=> TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Icon
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: TSizes.spaceBtwItems / 2,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                ///icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium),
                          Text('[#256fg2]', style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                      ///icon
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Shipping date',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium),
                          Text('04 Nov 2024', style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                      ///icon
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
