import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
        ///product image slider
        TProductImageSlider(dark: false,),
              Padding(
                padding: EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    TRatingAndShare(),
                    ///price title stack and brand
                    TProductMetaData(),
                  ],

              )
              )
            ],
      ),


    ),
    );

  }
}



