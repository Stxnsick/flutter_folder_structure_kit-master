import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key,
    required this.banners
  });
  final List <String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            height: 200,
            onPageChanged: (index, _) =>
                controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList() ,

        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Page Indicator using for loop with dynamic height
        Obx(() {
          List<Widget> indicators = [];
          for (int i = 0; i < banners.length; i++) {
            final isActive = controller.carouselCurrentIndex.value == i;
            indicators.add(
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 20,
                height: isActive ? 8 : 4, // taller if active
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: isActive ? TColors.primary : TColors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators,
          );
        }),
      ],
    );
  }
}
