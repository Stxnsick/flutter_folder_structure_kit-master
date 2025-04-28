import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/product_reviews.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark= THelperFunctions.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
        ///product image slider
        const TProductImageSlider(dark: false,),
              Padding(
                padding: const EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TRatingAndShare(),
                    ///price title stack and brand
                    const TProductMetaData(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TSectionHeading(title: 'Reviews(199)', showActionButton: false),
                        IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed:() => Get.to(() => const ProductReviewsScreen())),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],

              )
              )
            ],
      ),


    ),
    );

  }
}



