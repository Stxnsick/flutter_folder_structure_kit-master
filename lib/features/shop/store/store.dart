import 'package:flutter/material.dart';
import 'package:t_store/common/layouts/grid_layout.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/appbar/tabbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store/features/shop/store/widgets/category_tab.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../common/widgets/brands/brand_card.dart';
import '../../../common/widgets/brands/brand_showcase.dart';
import '../../../common/widgets/images/t_circular_image.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar:  TAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            TCartCounterIcon(onPressed: (){})
          ],
        ),
        body:  NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
          return[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)?TColors.black:TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics:  const NeverScrollableScrollPhysics(),
                children: [
                  ///--Search bar
                  const SizedBox(height:  TSizes.spaceBtwItems,),
                  const TSearchContainer(text: 'Search in Store',showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  ///featured brands
                  TSectionHeading(title:'Featured Brands',onPressed: (){},),
                  const SizedBox( height: TSizes.spaceBtwItems/1.5,),
                  TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: (){},
                      child: TRoundedContainer(padding:   const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            ///icon
                            Flexible(
                              child: TCircularImage(
                                isNetworkImage: false,
                                image: TImages.clothIcon,
                                backgroundColor: Colors.transparent,
                                overlayColor: THelperFunctions.isDarkMode(context)? TColors.white: TColors.black,
                              ),
                            ),
                            const SizedBox( width: TSizes.spaceBtwItems/2,),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TBrandTitleWithVerifiedIcon(title: 'Acc Cement', brandTextSize: TextSizes.large,),
                                  Text(
                                    '26 products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  ),
                                ],
      
                              ),
                            )
      
                          ],
                        ),
                      ),
                    );
                  }
                  )
      
                ],
              ),
              ),
      
              ///Tabs
              bottom:const TTabBar
              (tabs:[
              Tab(child: Text('Cement'),),
              Tab(child: Text('Bricks'),),
              Tab(child: Text('Tiles'),),
              Tab(child: Text('Sand'),),
              Tab(child: Text('Furniture'),),
              Tab(child: Text('Sofa'),),

              ],
              ),
              ),
              ];

      
        },
            ///body 
            body: const TabBarView(children: [TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(),
            ]),
      ),
    )
    );
  }
}




