import 'package:artabasco/app/modules/login/login_controller.dart';
import 'package:artabasco/app/modules/login/widgets/registro_view.dart';
import 'package:get/get.dart';

class LoginBindig extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(),
    );
    Get.lazyPut(
      () => Registro(),
    );
  }
}
