import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as deviceStorage;

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
      final storage = GetStorage();

      if (kDebugMode){
        print('====================Get Storage next button======================');
        print(storage.read('IsFirstTime' ));
      }
      storage.write('IsFirstTime', false);
      if (kDebugMode){
        print('====================Get Storage next button======================');
        print(storage.read('IsFirstTime' ));
      }

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