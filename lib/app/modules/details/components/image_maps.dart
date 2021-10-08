import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageMaps extends StatelessWidget {
  const ImageMaps({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Ubicación',
            style: GoogleFonts.rubik(
              fontSize: responsive.dp(1.6),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: responsive.hp(2),
        ),
        Container(
          height: responsive.hp(50),
          width: responsive.wp(100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
          ),
          child: GestureDetector(
            child: Image(
              image: AssetImage('assets/images/localizacion.png'),
              fit: BoxFit.cover,
            ),
            onTap: () {
              print('GoogleMaps.com');
              Get.toNamed(
                Routes.GOOGLE_MAPS.toRoute(),
              );
            },
          ),
        ),
      ],
    );
  }
}
