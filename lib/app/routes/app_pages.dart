import 'package:artabasco/app/global_widgets/google_maps_view.dart';
import 'package:artabasco/app/modules/Municipio/municipio_binding.dart';
import 'package:artabasco/app/modules/Municipio/municipio_view.dart';
import 'package:artabasco/app/modules/Municipio/widgets/plantilla_categoria.dart';
import 'package:artabasco/app/modules/google_maps.dart/google_binding.dart';
import 'package:artabasco/app/modules/home/home_binding.dart';
import 'package:artabasco/app/modules/home/home_view.dart';
import 'package:artabasco/app/modules/home/widgets/all_municipios_view.dart';
import 'package:artabasco/app/modules/login/login_binding.dart';
import 'package:artabasco/app/modules/login/login_view.dart';
import 'package:artabasco/app/modules/login/widgets/registro_view.dart';
import 'package:artabasco/app/modules/onBording/onBoarding_binding.dart';
import 'package:artabasco/app/modules/onBording/onBording_view.dart';
import 'package:artabasco/app/modules/splash/splash_binding.dart';
import 'package:artabasco/app/modules/splash/splash_view.dart';
import 'package:artabasco/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;
  static final routes = [
    GetPage(
      name: Routes.SPLASH.generateBaseRoute(),
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.ON_BOARDING.generateBaseRoute(),
      page: () => OnboardingScreen(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: Routes.LOGIN_VIEW.generateBaseRoute(),
      page: () => LoginView(),
      binding: LoginBindig(),
    ),
    GetPage(
      name: Routes.REGISTRO.generateBaseRoute(),
      page: () => Registro(),
      binding: LoginBindig(),
    ),
    GetPage(
      name: Routes.HOME_VIEW.generateBaseRoute(),
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.All_MUNICIPIOS_VIEW.generateBaseRoute(),
      page: () => AllMunicipiosView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.MUNICIPIOS_VIEW.generateBaseRoute(),
      page: () => MunicipioView(),
      binding: MunicipioBindig(),
    ),
    GetPage(
      name: Routes.GOOGLE_MAPS.generateBaseRoute(),
      page: () => GoogleMapsView(),
      binding: GoogleBinding(),
    ),
    GetPage(
      name: Routes.PLANTILL_CATEGORIA.generateBaseRoute(),
      page: () => PlantillaCategoria(
        title: 'Artesanía',
      ),
      binding: MunicipioBindig(),
    ),
  ];
}
