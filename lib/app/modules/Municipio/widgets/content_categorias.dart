import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentCategorias extends StatelessWidget {
  const ContentCategorias({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          SizedBox(
            width: responsive.hp(2),
          ),
          Row(
            children: [
              Ico(
                icons: 'assets/images/crafts.png',
                name: 'Artesanía',
                color: Color(0xFFF3EFFF),
              ),
              Spacer(),
              Ico(
                icons: 'assets/images/cooking.png',
                name: 'Gastronomia',
                color: Color(0xFFFFF9EC),
              ),
              Spacer(),
              Ico(
                icons: 'assets/images/hotel.png',
                name: 'Hospedajes',
                color: Color(0xFFE8FFF1),
              ),
              Spacer(),
              Ico(
                icons: 'assets/images/aumentedReality2.png',
                name: 'Realidad A',
                color: Color(0xFFFFF1F0),
              ),
            ],
          ),
          SizedBox(
            height: responsive.hp(2),
          ),
          Row(
            children: [
              Ico(
                icons: 'assets/images/art.png',
                name: 'Artesanos',
                color: Color(0xFFFFF9EC),
              ),
              SizedBox(
                width: responsive.wp(8),
              ),
              Ico(
                icons: 'assets/images/more.png',
                name: 'Más',
                color: Color(0xFFF3EFFF),
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}

class Ico extends StatelessWidget {
  Ico(
      {Key key,
      @required this.icons,
      @required this.name,
      @required this.color})
      : super(key: key);

  final String icons;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Column(
      children: [
        Container(
          height: responsive.hp(7),
          width: responsive.wp(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: IconButton(
            icon: Image.asset(icons),
            onPressed: () {
              Get.toNamed(
                Routes.PLANTILL_CATEGORIA.toRoute(),
              );
            },
          ),
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
            fontSize: responsive.dp(1.4),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
