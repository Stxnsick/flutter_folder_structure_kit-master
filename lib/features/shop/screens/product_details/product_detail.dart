import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/Product_attributes.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark= THelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar:const TBottomAddToCart() ,
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

                    const TProductAttributes(),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    ///checkout button
                    SizedBox(
                        width: double.infinity , child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    ///description
                    const TSectionHeading(title: 'Description',showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    const ReadMoreText('Asian Paints Tractor Emulsion – Premium Protection for Your Walls Asian Paints Tractor Emulsion is a high-quality, water-based paint designed to give your walls a smooth, long-lasting finish. Its advanced formula provides excellent coverage, hiding imperfections while resisting dirt and fungus. With superior washability, it keeps walls looking fresh for years. The paint is durable, crack-resistant, and suitable for both interior and exterior surfaces. Available in a wide range of attractive shades, Tractor Emulsion ensures vibrant, fade-resistant colors. Easy to apply and low on odor, it’s the perfect choice for a beautiful and hassle-free painting experience. Trust Asian Paints for unmatched quality and protection!',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText:'Show more',
                    trimExpandedText: ' Show Less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    ),
                    ///reviews
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TSectionHeading(title: 'Reviews',showActionButton: false,onPressed: (){}),
                        IconButton(onPressed: ()=> Get.to(()=> const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18,)),

                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections,),


                  ],

              )
              )
            ],
      ),


    ),
    );

  }
}



