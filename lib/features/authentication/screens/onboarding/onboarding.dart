import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/onboarding/widget/onboarding_dot_navigation.dart';
import 'package:t_store/features/authentication/screens/onboarding/widget/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widget/onboarding_skip.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    // Pre-cache all onboarding images when screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _precacheImages(context);
    });

    return Scaffold(
      body: Stack(
        children: [
          // Optimized PageView with smooth scrolling
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            physics: const BouncingScrollPhysics(),
            scrollBehavior: const ScrollBehavior().copyWith(
              overscroll: false,
              physics: const BouncingScrollPhysics(),
            ),
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // UI Elements
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }

  // Pre-cache all onboarding images
  void _precacheImages(BuildContext context) {
    precacheImage(const AssetImage(TImages.onBoardingImage1), context);
    precacheImage(const AssetImage(TImages.onBoardingImage2), context);
    precacheImage(const AssetImage(TImages.onBoardingImage3), context);

    // Optional: Add any other images used in onboarding widgets
    // precacheImage(AssetImage(TImages.yourOtherImage), context);
  }
}