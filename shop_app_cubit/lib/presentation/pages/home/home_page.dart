import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_cubit/business_logic/cubit/app_cubit.dart';
import 'package:shop_app_cubit/data/models/Product.dart';
import 'package:shop_app_cubit/presentation/theme/colors.dart';
import 'package:shop_app_cubit/presentation/theme/size.dart';
import 'package:shop_app_cubit/presentation/theme/strings.dart';
import 'package:shop_app_cubit/presentation/widgets/app_large_text.dart';
import 'package:shop_app_cubit/presentation/widgets/app_text.dart';

import 'components/body.dart';
import 'components/item_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: titleList.length, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Canada Shop"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.payment))
        ],
      ),
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          if (state is LoadedState) {
            var bags = state.bags;
            return Body(
              tabController: _tabController,
              bags: bags,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
