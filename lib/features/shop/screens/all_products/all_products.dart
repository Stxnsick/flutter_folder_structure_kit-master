import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../../utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Add a variable to hold the selected value
    String? selectedValue; // Make it nullable if you want no initial selection

    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text(
          'Popular Products',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts()
        ),
      ),
    );
  }
}

