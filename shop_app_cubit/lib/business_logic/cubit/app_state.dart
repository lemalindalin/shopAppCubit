part of 'app_cubit.dart';

@immutable
abstract class AppState extends Equatable {}

class AppInitial extends AppState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class LoadingState extends AppState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadedState extends AppState {
  LoadedState(this.bags);
  final List<Product> bags;
  @override
  List<Object?> get props => [bags];
}

class DetailState extends AppState {
  DetailState(this.bag);
  final Product bag;
  @override
  List<Object?> get props => [bag];
}
