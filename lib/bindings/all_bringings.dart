

import 'package:food_mobile_app/controllers/discount_controller.dart';
import 'package:get/get.dart';
///

import 'package:food_mobile_app/controllers/main_drawer_controller.dart';

import 'package:food_mobile_app/controllers/spalas_controller.dart';
import '../controllers/wallet_controller.dart';

import 'package:food_mobile_app/controllers/main_nav_controller.dart';
import '../controllers/switch_controller.dart';
import 'package:food_mobile_app/controllers/tab_controller.dart';
import '../controllers/food_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigatorController());
    Get.lazyPut(() => TabBarController());
    Get.lazyPut(() => SwitchController());
    Get.lazyPut(() => FoodController());
    Get.lazyPut(() => WalletController());
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => MainDrawerController());
    Get.lazyPut(() => DiscountController());

  }
}