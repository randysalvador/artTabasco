import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/data/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationBasic extends StatelessWidget {
  const InformationBasic({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    final double _width = 28.5;

    final double _height = 15;
    return Container(
//      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(bottom: responsive.dp(2)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Información básica',
              style: GoogleFonts.rubik(
                fontSize: responsive.dp(1.6),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: responsive.hp(2),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                  height: responsive.hp(_height),
                  width: responsive.wp(_width),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFC4C4C4),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.calendar_today,
                      ),
                      Text(
                        'Abierto de',
                        style: GoogleFonts.rubik(
                          fontSize: responsive.dp(1.4),
                        ),
                      ),
                      Text(
                        'Lun - Dom',
                        style: GoogleFonts.rubik(
                          fontSize: responsive.dp(1.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                  height: responsive.hp(_height),
                  width: responsive.wp(_width),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFC4C4C4),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.timer,
                      ),
                      Text(
                        'Horario',
                        style: GoogleFonts.rubik(
                          fontSize: responsive.dp(1.4),
                        ),
                      ),
                      Text(
                        '07:00 - 22:00',
                        style: GoogleFonts.rubik(
                          fontSize: responsive.dp(1.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                  height: responsive.hp(_height),
                  width: responsive.wp(_width),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFC4C4C4),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.money,
                      ),
                      Text(
                        'Desde',
                        style: GoogleFonts.rubik(
                          fontSize: responsive.dp(1.4),
                        ),
                      ),
                      Text(
                        '\$${product.price}',
                        style: GoogleFonts.rubik(
                          fontSize: responsive.dp(1.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
