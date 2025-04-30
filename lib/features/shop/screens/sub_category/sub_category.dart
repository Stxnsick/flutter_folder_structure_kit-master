import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';

import '../../../../common/widgets/products_card/Product_card_horizontal.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text('Cement'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TRoundedImage(
                  width: double.infinity,
                  height: null,
                  imageUrl: TImages.banner1,
                  applyImageRadius: true,
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                ///sub categories
                Column(
                    children: [

                  TSectionHeading(title: 'Premium',onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                      const TProductCardHorizontal(),

                ]
                )
              ],
            ),
          ),
        ));
  }
}
