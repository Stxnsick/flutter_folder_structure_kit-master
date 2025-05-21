import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';
class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

   screenRedirect() async{
    //local storage
     if (kDebugMode){
       print('====================Get Storage======================');
       print(deviceStorage.read('IsFirstTime'));
     }
     deviceStorage.writeIfNull('IsFirstTime', true);
     deviceStorage.read('IsfirstTime')!= true ? Get.offAll(()=> const LoginScreen()):Get.offAll(()=> const OnBoardingScreen());

   }
}