import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shop_app_cubit/data/models/Product.dart';
import 'package:shop_app_cubit/data/repositories/item_repository.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required this.data}) : super(AppInitial()) {
    emit(LoadingState());
  }

  final ItemRepository data;
  late final bags;

  void getData() async {
    try {
      //emit(LoadingState());
      bags = await data.getProducts();
      emit(LoadedState(bags));
    } catch (e) {}
  }

  detailPage(Product product) {
    emit(DetailState(product));
  }

  goHome() {
    emit(LoadedState(bags));
  }
}
