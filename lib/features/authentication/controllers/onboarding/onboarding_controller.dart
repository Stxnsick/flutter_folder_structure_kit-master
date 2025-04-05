import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';
class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();
  final pageController = PageController();
  Rx <int> currentPageIndex =0.obs;


  void updatePageIndicator(index)=> currentPageIndex = index;
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);

  }
  void nextPage(){
    if(currentPageIndex.value==2){
     Get.offAll(const LoginScreen());
    }
    else{
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration:
        const Duration(milliseconds: 300), // Adjust the duration as needed
        curve: Curves.easeInOut,
      ).then((_) {
        currentPageIndex.value = page;
        // Adjust the animation curve if desired
      });
    }
  }
  void skipPage(){
    currentPageIndex.value=2;
    pageController.animateToPage(
      2,
      duration:
      const Duration(milliseconds: 300), // Adjust the duration as needed
      curve: Curves.easeInOut, // Adjust the animation curve if desired
    );
  }
}