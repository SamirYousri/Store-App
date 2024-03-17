import 'package:store/models/product_model.dart';
import 'package:store/services/get_all_products_service.dart';
import 'package:store/widget/customCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.cartPlus,
            ),
          )
        ],
        backgroundColor: Colors.white,
        title: Text(
          'New Trend',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: FutureBuilder<List<ProductModel>>(
        future: GetAllProductsService().getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductModel> productList0 = snapshot.data!;
            return GridView.builder(
                itemCount: productList0.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    productModel0: productList0[index],
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      // ),
    );
  }
}

//       body: FutureBuilder<List<ProductModel>>(
//         future: GetAllProductsService().getProducts(),
//         builder: (context, snapshot) {
//            if (snapshot.hasData) {
//           List<ProductModel> productList0 = snapshot.data!;
//             return GridView.builder(
//             itemCount: productList0.length,
//             clipBehavior: Clip.none,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 1,
//               mainAxisSpacing: 20,
//               childAspectRatio: 1.2,
//             ),
//             itemBuilder: (context, index) {
//               return CustomCard(
//                 productModel0: productList0[index],
//               );
//             },
//           );
//           } else {
//             Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
