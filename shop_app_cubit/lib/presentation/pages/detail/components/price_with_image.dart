import 'package:flutter/material.dart';
import 'package:shop_app_cubit/data/models/Product.dart';
import 'package:shop_app_cubit/presentation/theme/size.dart';

class PriceWithImage extends StatelessWidget {
  const PriceWithImage({
    Key? key,
    required Product product,
  })  : _product = product,
        super(key: key);

  final Product _product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(text: "Price\n"),
          TextSpan(
              text: "\$${_product.price}",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        ])),
        const SizedBox(
          width: kDefaultAppPadding,
        ),
        Expanded(
            child: Hero(
                tag: "${_product.id}",
                child: Image.asset(
                  _product.image,
                  fit: BoxFit.fill,
                )))
      ],
    );
  }
}
