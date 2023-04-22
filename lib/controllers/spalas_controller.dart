

import 'package:food_mobile_app/navigatior.dart';
import 'package:get/get.dart';

import 'package:food_mobile_app/pages/intro_screen.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {

  /// For showing introduction screen just once
  final box = GetStorage();
  bool get showIntro => box.read('showIntro') ?? true;
  void changeBool(bool val) {
    box.write('showIntro', val);
    update();
  }

  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 8),
          () {
        Get.offAll(() => showIntro == false?  const IntroductionPage() : const MainNavigator(),
            transition: Transition.cupertino);
      },
    );
    super.onInit();
  }
}