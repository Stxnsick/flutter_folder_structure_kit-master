import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('store', style:  Theme.of(context).textTheme.headlineMedium),
            actions: [
              TCartCounterIcon(onPressed:(){}),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, body: Container()),
      return [
        SliverAppBar(
          automaticallyImplyLeading: false,
        pinned: true,
        floating: true,
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black: TColors.white,
        expandedHeight: 440,

    ),
    ,);
  }
}
