import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xlo_get/helpers/format_fields.dart';
import 'package:xlo_get/models/ad.dart';
import 'package:xlo_get/screens/products/product_screen.dart';

class ProductTile extends StatelessWidget {
  ProductTile(this.ad);

  final Ad ad;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ProductScreen(ad));
      },
      child: Container(
        height: 135,
        margin: EdgeInsets.symmetric(horizontal: 2, vertical: 1),
        child: Card(
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 135,
                width: 127,
                child: Image.file(
                  ad.images[0],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ad.title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'R\$ ${numToString(ad.price)}',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '${ad.address.district}, ${ad.address.city}, - ${ad.address.federativeUnit}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
