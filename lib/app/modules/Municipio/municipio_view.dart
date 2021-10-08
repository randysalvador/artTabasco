import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/global_widgets/app_bar.dart';
import 'package:artabasco/app/global_widgets/bottom_nav_bar.dart';
import 'package:artabasco/app/global_widgets/name_user.dart';
import 'package:artabasco/app/global_widgets/user_avatar.dart';
import 'package:artabasco/app/modules/Municipio/widgets/content_categorias.dart';
import 'package:artabasco/app/modules/Municipio/widgets/municipio_categoria.dart';
import 'package:artabasco/app/modules/Municipio/widgets/title_promo.dart';

import 'package:artabasco/app/modules/home/widgets/places_recommended.dart';
import 'package:artabasco/app/modules/home/widgets/slide_view.dart';
import 'package:flutter/material.dart';

class MunicipioView extends StatelessWidget {
  const MunicipioView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(
        context,
        title: 'Bienvenido a Balancan',
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
            MunicipioCategoria(),
            SizedBox(
              height: responsive.dp(2),
            ),
            ContentCategorias(),
            SizedBox(
              height: responsive.dp(2),
            ),
            TitlePromo(),
            RecommendedPlaces(),
          ],
        ),
      ),
    );
  }
}
