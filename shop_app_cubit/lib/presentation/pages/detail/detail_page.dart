import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_cubit/business_logic/cubit/app_cubit.dart';
import 'package:shop_app_cubit/data/models/Product.dart';
import 'package:shop_app_cubit/presentation/theme/size.dart';
import 'package:shop_app_cubit/presentation/theme/strings.dart';
import 'package:shop_app_cubit/presentation/widgets/app_large_text.dart';
import 'package:shop_app_cubit/presentation/widgets/app_text.dart';

import 'components/body.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state is DetailState) {
          Product product = state.bag;
          color = product.color;
          return Scaffold(
              backgroundColor: color,
              appBar: AppBar(
                backgroundColor: color,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    BlocProvider.of<AppCubit>(context).goHome();
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.credit_card))
                ],
              ),
              body: Body(
                size: size,
                product: product,
              ));
        } else {
          return Container();
        }
      },
    );
  }
}
