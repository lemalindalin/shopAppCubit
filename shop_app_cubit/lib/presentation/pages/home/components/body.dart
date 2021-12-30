import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_cubit/business_logic/cubit/app_cubit.dart';
import 'package:shop_app_cubit/data/models/Product.dart';
import 'package:shop_app_cubit/presentation/theme/colors.dart';
import 'package:shop_app_cubit/presentation/theme/size.dart';
import 'package:shop_app_cubit/presentation/theme/strings.dart';
import 'package:shop_app_cubit/presentation/widgets/app_large_text.dart';

import 'item_cart.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required TabController tabController,
    required List<Product> bags,
  })  : _tabController = tabController,
        _bags = bags,
        super(key: key);

  final TabController _tabController;
  final List<Product> _bags;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultAppPadding / 2, vertical: kDefaultAppPadding / 2),
      child: Column(
        children: [
          AppLargeText(
            text: women,
          ),
          TabBar(
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              controller: _tabController,
              labelColor: Colors.black,
              isScrollable: true,
              unselectedLabelColor: Colors.black38,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: CircleTabIndicator(
                  color: MyColors.primaryColorDark, radius: 4),
              tabs: [
                Tab(text: titleList[_tabController.index]),
                Tab(text: titleList[_tabController.index]),
                Tab(text: titleList[_tabController.index]),
                Tab(text: titleList[_tabController.index]),
              ]),
          const SizedBox(
            height: kDefaultAppPadding,
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultAppPadding,
                    crossAxisSpacing: kDefaultAppPadding,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        BlocProvider.of<AppCubit>(context)
                            .detailPage(_bags[index]);
                      },
                      child: ItemCart(
                        bags: _bags,
                        index: index,
                      ),
                    );
                  }),
              Text("B"),
              Text("C"),
              Text("D"),
            ]),
          )
        ],
      ),
    );
  }
}
