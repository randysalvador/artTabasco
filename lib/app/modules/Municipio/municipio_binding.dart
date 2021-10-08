import 'package:artabasco/app/modules/Municipio/municipio_controller.dart';
import 'package:get/get.dart';

class MunicipioBindig extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => MunicipioController(),
    );
  }
}
