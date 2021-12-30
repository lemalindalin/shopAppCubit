import 'package:flutter/material.dart';
import 'package:shop_app_cubit/data/models/Product.dart';
import 'package:shop_app_cubit/presentation/theme/colors.dart';
import 'package:shop_app_cubit/presentation/theme/size.dart';
import 'package:shop_app_cubit/presentation/theme/strings.dart';
import 'package:shop_app_cubit/presentation/widgets/app_large_text.dart';
import 'package:shop_app_cubit/presentation/widgets/app_text.dart';

import 'color_and_size.dart';
import 'description.dart';
import 'price_with_image.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required Product product,
    required this.size,
  })  : _product = product,
        super(key: key);

  final Size size;
  final Product _product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultAppPadding,
                      right: kDefaultAppPadding),
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24)),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: _product),
                      SizedBox(
                        height: kDefaultAppPadding / 2,
                      ),
                      Description(product: _product),
                      SizedBox(
                        height: kDefaultAppPadding / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultAppPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: "Aristocratic Hand Bag",
                        color: Colors.white,
                      ),
                      AppLargeText(
                        text: _product.title,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: kDefaultAppPadding,
                      ),
                      PriceWithImage(product: _product)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
