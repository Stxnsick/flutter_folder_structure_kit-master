
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';



class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen ({super.key});

  get value => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text("Ratings and reviews are verified and are form people who use the same type of device that you use,"),
              const SizedBox(height: TSizes.spaceBtwItems),
              
              //overall product ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.8),
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


