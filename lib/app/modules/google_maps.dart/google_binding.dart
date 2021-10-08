import 'package:artabasco/app/modules/google_maps.dart/google_controller.dart';
import 'package:get/get.dart';

class GoogleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => GoogleController(),
    );
  }
}
