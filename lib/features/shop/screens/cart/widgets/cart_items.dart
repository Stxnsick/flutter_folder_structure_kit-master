import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
import 'add_remove_button.dart';
import 'cart_item.dart';
class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});
final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {

    return  ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) =>
      const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_,index)=> Column(
        children: [
          const TCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if(showAddRemoveButtons) const Row(
                children: [
                  SizedBox(width: 70),
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),

              const TProductPriceText(price: '375'),

            ],

          )
        ],
      ),
    );
  }
}
