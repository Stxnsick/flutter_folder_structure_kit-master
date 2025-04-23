import 'package:flutter/material.dart';

import '../../../../common/layouts/grid_layout.dart';
import '../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../common/widgets/products_card/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TBrandShowcase(images: [TImages.productImage1, TImages.productImage2, TImages.productImage6,],),
            TBrandShowcase(images: [TImages.productImage6, TImages.productImage7, TImages.productImage8,],),
      ///products
            TSectionHeading(title: 'You might like', showActionButton:true, onPressed: (){}),
            const SizedBox(height: TSizes.spaceBtwItems,),
            TGridLayout(itemCount: 4, itemBuilder: (_, index)=> TProductCardVertical()),
            const SizedBox(height: TSizes.spaceBtwItems,),

          ],
        ),
      ),
    ]
    );
  }
}
