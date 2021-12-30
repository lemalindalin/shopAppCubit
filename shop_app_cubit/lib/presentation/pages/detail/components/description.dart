import 'package:flutter/material.dart';
import 'package:shop_app_cubit/data/models/Product.dart';
import 'package:shop_app_cubit/presentation/theme/size.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required Product product,
  })  : _product = product,
        super(key: key);

  final Product _product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultAppPadding),
      child: Text(
        _product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
