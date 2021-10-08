import 'dart:async';
import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/modules/splash/splash_controller.dart';
import 'package:artabasco/app/routes/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var valor = 50;
  final Duration _duration = const Duration(
    microseconds: 1000,
  );

  Timer _interval;
  @override
  void initState() {
    super.initState();

    _interval = Timer.periodic(_duration, (timer) {
      setState(() {
        valor = (valor == 50) ? 70 : 50;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _interval.cancel();
  }

  Future _init() async {
    await Future.delayed(
        Duration(
          seconds: 2,
        ),
        () {});

    return Get.offNamed(
      Routes.ON_BOARDING.toRoute(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Scaffold(
      body: GetBuilder<SplashController>(
        builder: (_) => SplashScreen(
          navigateAfterFuture: _init(),
          title: Text(
            'Vamos a Tabasco',
            style: GoogleFonts.poppins(
              fontSize: responsive.dp(3.5),
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          image: Image.asset('assets/images/splash.png'),
          backgroundColor: Color(0xFF2A2937),
          photoSize: 100.0,
          loaderColor: Colors.purple,
        ),
      ),
    );
  }
}
