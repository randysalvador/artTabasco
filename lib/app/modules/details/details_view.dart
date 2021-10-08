import 'package:artabasco/app/data/model/Product.dart';

import 'package:artabasco/app/modules/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  final Product product;

  const DetailsView({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
      ),
      backgroundColor: product.color,
      body: Body(product: product),
    );
  }
}
