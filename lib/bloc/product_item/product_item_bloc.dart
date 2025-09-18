import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item_event.dart';
part 'product_item_state.dart';
part 'product_item_bloc.freezed.dart';

class ProductItemBloc extends Bloc<ProductItemEvent, ProductItemState> {
  ProductItemBloc() : super(_Initial()) {
    on<ProductItemEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
