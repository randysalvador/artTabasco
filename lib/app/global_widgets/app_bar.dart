import 'package:artabasco/app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar(
  BuildContext context, {
  String title,
  List<Widget> actions,
  Widget leading,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        color: kTextColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
    /* bottom: TabBar(
      tabs: [
        //  Text('data'),
      ],
    ), */
    leading: leading,
    actions: actions,
  );
}
