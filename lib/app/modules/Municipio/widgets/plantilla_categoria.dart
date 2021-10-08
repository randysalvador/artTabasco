import 'package:artabasco/app/global_widgets/bottom_nav_bar.dart';
import 'package:artabasco/app/modules/Municipio/widgets/body.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantillaCategoria extends StatelessWidget {
  const PlantillaCategoria({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF26C165),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          title,
          textAlign: TextAlign.left,
          style: GoogleFonts.rubik(
            color: Color(0xFF26C165),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: Colors.white,
//        bottomNavigationBar: BottomNavBar(),
      bottomNavigationBar: BottomNavBar(),
      body: const Body(),
    );
  }
}
