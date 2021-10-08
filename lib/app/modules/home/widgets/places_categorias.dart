import 'package:artabasco/app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlacesCategories extends StatefulWidget {
  const PlacesCategories({
    Key key,
  }) : super(key: key);

  @override
  _PlacesCategoriesState createState() => _PlacesCategoriesState();
}

class _PlacesCategoriesState extends State<PlacesCategories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> placesCategoris = [
      "Populares",
      "Frecuentes",
      "Más visitados",
      "Centro",
      "Macuspana",
      "Accesorios",
      "Recuerdos",
      "Comida"
    ];

    return Padding(
      padding: EdgeInsets.all(30),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: placesCategoris.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    this.selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    placesCategoris[index],
                    style: GoogleFonts.rubik(
                        fontSize: 16,
                        color:
                            selectedIndex == index ? kPrimaryColor : kTextColor,
                        fontWeight: selectedIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
