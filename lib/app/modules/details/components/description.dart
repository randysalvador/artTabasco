import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/data/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Container(
      padding: EdgeInsets.only(bottom: responsive.dp(2)),
      child: Container(
        //padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
        padding: EdgeInsets.all(5),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFFC4C4C4),
        ),
        child: Text(
          product.description,
          style: GoogleFonts.rubik(
            fontSize: responsive.dp(1.6),
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
