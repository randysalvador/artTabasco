import 'package:artabasco/app/global_widgets/bottom_nav_bar.dart';
import 'package:artabasco/app/global_widgets/name_user.dart';
import 'package:artabasco/app/global_widgets/user_avatar.dart';
import 'package:artabasco/app/global_widgets/app_bar.dart';
import 'package:artabasco/app/modules/home/widgets/places_recommended.dart';
import 'package:artabasco/app/modules/home/widgets/recommended.dart';
import 'package:artabasco/app/modules/home/widgets/slide_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(
        context,
        title: 'Bienvenido',
        actions: [
          UserAvatar(),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NameUser(),
            SlideView(),
            Recommended(),
            RecommendedPlaces(),
          ],
        ),
      ),
    );
  }
}
