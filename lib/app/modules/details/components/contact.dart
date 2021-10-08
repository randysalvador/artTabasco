import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/data/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    final double _width = 92;
    final double _height = 10;
    return Container(
//      alignment: Alignment.topLeft,
      // padding: EdgeInsets.only(bottom: responsive.dp(1)),
      padding: EdgeInsets.only(bottom: responsive.dp(2)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Contacto',
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
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                height: responsive.hp(_height),
                width: responsive.wp(_width),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFC4C4C4),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: responsive.dp(5),
                      ),
                      onPressed: () {
                        print('Facebook.com');
                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.facebook,
                        size: responsive.dp(5),
                      ),
                      onPressed: () {},
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.facebook,
                        size: responsive.dp(5),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
