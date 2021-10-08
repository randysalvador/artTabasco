import 'package:artabasco/app/modules/onBording/onBoarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OnBoardingController(),
    );
  }
}
