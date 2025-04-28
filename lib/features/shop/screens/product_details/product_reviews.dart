import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';



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
              Row(
                children: [
                  Expanded(flex : 3,child: Text("4.8", style: Theme.of(context).textTheme.displayLarge)),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        TRatingProgressIndicator( text: '5', value: 1.0),
                        const SizedBox()
                        TRatingProgressIndicator( text: '4', value: 0.8),
                        TRatingProgressIndicator( text: '3', value: 0.6),
                        TRatingProgressIndicator( text: '2', value: 0.4),
                        TRatingProgressIndicator( text: '1', value: 0.2),
                                    ],

                                  ),
                  )

            ],
          ),
          ],
        )
      ),
    ),
    );
  }
}

class TRatingProgressIndicator extends StatelessWidget {


  const TRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,child: Text('5', style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex : 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
                                      value: 0.5,
                                      minHeight : 25,
                                      backgroundColor : TColors.grey,
                                      valueColor: AlwaysStoppedAnimation(TColors.primary),
                                      borderRadius : BorderRadius.circular(7),
            ),
          ),
    ),

      ],
                        );
  }
}
