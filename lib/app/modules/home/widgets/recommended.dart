import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(
              'Municipios',
              style: GoogleFonts.rubik(
                fontSize: responsive.dp(1.6),
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            TextButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.All_MUNICIPIOS_VIEW.toRoute(),
                  );
                },
                child: Text(
                  'Ver todos',
                  style: GoogleFonts.rubik(
                    fontSize: responsive.dp(1.6),
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
