import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/pages/updateProductWidget.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.productModel0});

  ProductModel productModel0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductWidget.id,
            arguments: productModel0);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, right: 12, left: 12),
            child: Container(
              decoration: BoxDecoration(
                //color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 40,
                    offset: Offset(10, 10),
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productModel0.title.substring(0, 10),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$ '
                            '${productModel0.price.toString()}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 90,
            bottom: 90,
            child: Image.network(
              productModel0.image,
              height: 120,
              width: 120,
            ),
          ),
        ],
      ),
    );
  }
}
