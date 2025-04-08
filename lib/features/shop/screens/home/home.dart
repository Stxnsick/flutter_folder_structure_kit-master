import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/sizes.dart';
import '../../../../common/layouts/grid_layout.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/products_card/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            ///header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                const THomeAppBar(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///searchbar
                const TSearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                    showBorder: false),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///Categories
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Products', onPressed: (){},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      ///category cards
                      const THomeCategories()
                    ],
                  ),
                )
              ],
            )),
            ///body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(banners: [TImages.banner1,TImages.banner2,TImages.banner3,TImages.banner4],),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: 'Popular Products',),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  TGridLayout(itemCount: 20,itemBuilder: (_,index) => const TProductCardVertical() ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






