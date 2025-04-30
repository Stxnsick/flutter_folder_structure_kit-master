import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/screens/cart/widgets/cart.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';
class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed, this.iconColor= Colors.grey, this.counterTextColor, this.counterBgColor,
  });
  final Color? iconColor, counterTextColor , counterBgColor;
  final VoidCallback onPressed;




  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
        children: [
          IconButton(onPressed: ()=> Get.to(CartScreen()), icon: Icon(Iconsax.shopping_bag,color: iconColor)),
          Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: counterBgColor ?? (dark? TColors.primary : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  '5',
                  style: Theme.of(context).textTheme.labelLarge!.apply(color: counterTextColor,fontSizeFactor: 0.8),
                ),
              ),
            ),
          )
        ]
    );
  }
}