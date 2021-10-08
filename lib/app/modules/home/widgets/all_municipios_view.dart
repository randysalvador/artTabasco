import 'package:artabasco/app/global_widgets/app_bar.dart';
import 'package:artabasco/app/global_widgets/bottom_nav_bar.dart';
import 'package:artabasco/app/global_widgets/name_user.dart';

import 'package:artabasco/app/global_widgets/user_avatar.dart';
import 'package:artabasco/app/modules/home/widgets/places_recommended.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllMunicipiosView extends StatelessWidget {
  const AllMunicipiosView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(
        context,
        title: 'Hello!',

        //leading: HamburgerMenu(),
        actions: [
          UserAvatar(),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      // bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // PlacesCategories(),
            // PopularPlaces(),
            NameUser(),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              alignment: Alignment.topLeft,
              child: Text(
                'Municipios',
                style: GoogleFonts.rubik(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RecommendedPlaces(),
          ],
        ),
      ),
    );
  }
}
