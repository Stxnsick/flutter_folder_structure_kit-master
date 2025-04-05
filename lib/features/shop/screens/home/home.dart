import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///searchbar
                TSearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                    showBorder: false),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      ///category cards
                      THomeCategories()
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}




