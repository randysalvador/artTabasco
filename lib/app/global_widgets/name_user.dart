import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameUser extends StatelessWidget {
  const NameUser({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
        child: Row(
          children: [
            Text(
              'Jimmy Sulivan',
              style: GoogleFonts.rubik(
                fontSize: responsive.dp(1.4),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
