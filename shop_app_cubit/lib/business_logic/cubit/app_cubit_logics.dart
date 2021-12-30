import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_cubit/business_logic/cubit/app_cubit.dart';
import 'package:shop_app_cubit/presentation/pages/detail/detail_page.dart';
import 'package:shop_app_cubit/presentation/pages/home/home_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(builder: (context, state) {
        if (state is LoadingState) {
          BlocProvider.of<AppCubit>(context).getData();
        }
        if (state is LoadedState) {
          return HomePage();
        }
        if (state is DetailState) {
          return const DetailPage();
        } else {
          return Container();
        }
      }),
    );
  }
}
