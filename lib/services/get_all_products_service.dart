import 'dart:convert';

import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProductsService {
  Future<List<ProductModel>> getProducts() async {
    // http.Response response = await http.get(
    //   Uri.parse('https://fakestoreapi.com/products'),
    // );
    // List<dynamic> data = jsonDecode(response.body);

    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
