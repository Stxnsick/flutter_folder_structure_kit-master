import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen ({super.key});

  get value => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Ratings and reviews are verified and are form people who use the same type of device that you use,"),
              SizedBox(height: TSizes.spaceBtwItems),
              
              //overall product ratings
              TOverallProductRating(),
              TRatingBarIndicator(rating: 3.8),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///user Reviews list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
          ],
        )
      ),
    ),
    );
  }
}


