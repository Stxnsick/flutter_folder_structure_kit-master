import 'package:flutter/material.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth, // Take full available width
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  TTexts.homeAppbarTitle,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: TColors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  TTexts.homeAppbarSubTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: TColors.black),
                ),
              ],
            ),
          );
        },
      ),
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: TColors.black,
              counterTextColor: TColors.white,
              counterBgColor: TColors.primary,
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}