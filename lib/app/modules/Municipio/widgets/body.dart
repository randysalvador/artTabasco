import 'package:artabasco/app/core/utils/constants.dart';
import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/data/model/Product.dart';
import 'package:artabasco/app/modules/Municipio/widgets/item_card.dart';
import 'package:artabasco/app/modules/details/details_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final String title;

  final String question;

  const Body({Key key, this.title, this.question}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Row(
              children: [
                Text(
                  '¿Los conoces?',
                  style: GoogleFonts.rubik(
                    fontSize: responsive.dp(2.4),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Container(
                  height: responsive.hp(7),
                  width: responsive.wp(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFF7F6F7),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Color(0xFF131A22),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPaddin,
            ),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsView(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
