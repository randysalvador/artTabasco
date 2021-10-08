import 'package:artabasco/app/core/utils/constants.dart';
import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/data/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Padding(
      //padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: GoogleFonts.rubik(
              fontSize: responsive.dp(1.4),
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: GoogleFonts.rubik(
              fontSize: responsive.dp(3),
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: GoogleFonts.rubik(
                        fontSize: responsive.dp(3),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(width: kDefaultPaddin),
              SizedBox(
                width: responsive.wp(8),
              ),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
