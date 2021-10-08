import 'package:artabasco/app/core/utils/constants.dart';
import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/core/utils/util.dart';
import 'package:artabasco/app/data/model/Place.dart';

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class GridPlaceCard extends StatelessWidget {
  const GridPlaceCard({Key key, @required this.place, @required this.tapEvent})
      : super(key: key);

  final Place place;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return GestureDetector(
      onTap: tapEvent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Hero(
              tag: place.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  place.image,
                  width: double.infinity,
                  height: responsive.dp(200),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: responsive.hp(7),
                  padding: EdgeInsets.symmetric(
                    horizontal: responsive.dp(1.9),
                    vertical: responsive.dp(.25),
                  ),
                  decoration: cardInfoDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            place.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: responsive.dp(1),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          //LikedButton()
                        ],
                      ),
                      SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: 5,
                        rating: place.rating,
                        size: responsive.dp(1.8),
                        isReadOnly: true,
                        color: kRatingStarColor,
                        borderColor: kRatingStarColor,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
