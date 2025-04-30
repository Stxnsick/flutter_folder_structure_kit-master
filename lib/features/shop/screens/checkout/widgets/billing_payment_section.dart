import 'package:flutter/material.dart';

import '../../../../../common/styles/rounded_container.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
        children: [
          TSectionHeading(title: 'Payment Methods',buttonTitle: 'Change',showActionButton: true, onPressed: (){},),
          const  SizedBox(height: TSizes.spaceBtwItems/2,),
          Row(
            children: [
              TRoundedContainer(
                width: 60,
                height: 35,
                backgroundColor: dark ? TColors.black: TColors.white,
                borderColor: Colors.transparent,
                padding: const EdgeInsets.all(TSizes.sm,),
                child: Image.asset(TImages.paypal, fit: BoxFit.contain,),

              ),
              const SizedBox(width: TSizes.spaceBtwItems/2,),
              Text('Paypal', style: Theme.of(context).textTheme.bodyLarge,)

            ],
          )

        ]
    );
  }
}
