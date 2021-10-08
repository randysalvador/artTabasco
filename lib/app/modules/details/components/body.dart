import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/data/model/Product.dart';
import 'package:artabasco/app/modules/details/components/contact.dart';

import 'package:artabasco/app/modules/details/components/image_maps.dart';
import 'package:artabasco/app/modules/details/components/information_basic.dart';

import 'package:flutter/material.dart';

import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    // It provide us total height and width
    //Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SizedBox(
          height: responsive.hp(158),
          child: Stack(
            children: [
              Container(
                //margin: EdgeInsets.only(top: size.height * 0.4),
                margin: EdgeInsets.only(top: responsive.dp(29)),
                padding: EdgeInsets.only(
                  top: responsive.dp(8),
                  left: responsive.dp(1.5),
                  right: responsive.dp(1.5),
                ),
                // height: 500,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    Description(product: widget.product),
                    InformationBasic(product: widget.product),
                    Contact(product: widget.product),
                    //GoogleView(),
                    ImageMaps(),
                  ],
                ),
              ),
              ProductTitleWithImage(product: widget.product),
            ],
          ),
        ),
      ],
    );
  }
}
