import 'package:artabasco/app/core/utils/responsive2.dart';
import 'package:artabasco/app/data/model/Place.dart';
import 'package:artabasco/app/modules/home/widgets/places_grid_card.dart';
import 'package:artabasco/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        //scrollDirection: Axis.horizontal,
        crossAxisCount: isLandscape(context) ? 3 : 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(20),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.2,
        children: List.generate(demoPlaces.length, (index) {
          return GridPlaceCard(
            place: demoPlaces[index],
            tapEvent: () {
              Get.toNamed(
                Routes.MUNICIPIOS_VIEW.toRoute(),
              );
            },
          );
        }),
      ),
    );
  }
}
