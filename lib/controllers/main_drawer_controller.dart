import 'package:get/get.dart';

class MainDrawerController extends GetxController{
  int currentDrawerItemIndex = 0;

  void changeIndex(int index){
    currentDrawerItemIndex=index;
    update(["current Drawer Itme Index"]);

  }

}