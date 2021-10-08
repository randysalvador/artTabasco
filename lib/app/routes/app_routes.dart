abstract class Routes {
  static const DASHBOARD = Route(name: '/');
  // Rutas genericas
  static const SPLASH = Route(name: '/splash');
  // Rutas para participantes
  static const HOME_VIEW = Route(name: '/home');

  static const All_MUNICIPIOS_VIEW = Route(name: '/AllMunicipios');

  static const MUNICIPIOS_VIEW = Route(name: '/municipio');

  static const PLANTILL_CATEGORIA = Route(name: '/categoria');

  static const GOOGLE_MAPS = Route(name: '/Ubication');

  static const LOGIN_VIEW = Route(name: '/login');
  static const REGISTRO = Route(name: '/registro');
  static const ON_BOARDING = Route(name: '/onBoarding');
  // Rutas apra admin

  static const PARTICIPANTE_CATEGORIA =
      Route(name: '/categoria', parameters: ['/:id']);
  static const PARTICIPANTE_PREGUNTA =
      Route(name: '/pregunta', parameters: ['/:id']);
  static const PARTICIPANTE_PERFIL = Route(name: '/perfil');
}

class Route {
  // Example: '/home'
  final dynamic name;
  //Example: ['/:id']
  final List<dynamic> parameters;

  const Route({this.name, this.parameters = const []});

  String generateBaseRoute() {
    return name + parameters.join();
  }

  String toRoute([List<String> parameters]) {
    return (parameters == null) ? this.name : this.name + parameters.join();
  }
}
