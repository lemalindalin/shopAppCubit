import 'package:flutter/material.dart';
import 'package:shop_app_cubit/data/models/Product.dart';
import 'package:shop_app_cubit/presentation/theme/colors.dart';
import 'package:shop_app_cubit/presentation/theme/size.dart';
import 'package:shop_app_cubit/presentation/widgets/app_large_text.dart';
import 'package:shop_app_cubit/presentation/widgets/app_text.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({
    Key? key,
    required List<Product> bags,
    required int index,
  })  : _bags = bags,
        _index = index,
        super(key: key);

  final List<Product> _bags;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultAppPadding),
          //width: 300,
          //height: 200,
          decoration: BoxDecoration(
              color: _bags.elementAt(_index).color,
              borderRadius: BorderRadius.circular(16)),
          child: Image.asset(_bags.elementAt(_index).image),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultAppPadding / 4),
            child: AppText(
              text: _bags.elementAt(_index).title,
              color: MyColors.textColor1,
            )),
        AppLargeText(
          text: "\$" + _bags.elementAt(_index).price.toString(),
          size: 20,
        ),
      ],
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
