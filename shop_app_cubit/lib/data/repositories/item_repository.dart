import 'package:shop_app_cubit/data/models/Product.dart';

class ItemRepository {
  Future<List<Product>> getProducts() async {
    return products;
  }
}
