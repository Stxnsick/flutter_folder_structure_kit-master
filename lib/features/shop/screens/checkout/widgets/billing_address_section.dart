import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      TSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',showActionButton: true, onPressed: (){},),
        const SizedBox(height: TSizes.spaceBtwItems/2,),

        Text('Rohit Kumar', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.phone, color: TColors.primary,),
            const SizedBox(width: TSizes.spaceBtwItems/2,),
            Text('+91 9876543210', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history, color: TColors.primary,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text('Govt.Poly. Hamirpur, Baru , pin: 177001', style: Theme.of(context).textTheme.bodyMedium,))
          ],
        ),

    ]
    );
  }
}
