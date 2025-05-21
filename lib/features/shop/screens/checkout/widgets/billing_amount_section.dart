import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ///subtotal
        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal ', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹750 ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        ///tax fee
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee ', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹50 ', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        ///order total
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total ', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹800 ', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
