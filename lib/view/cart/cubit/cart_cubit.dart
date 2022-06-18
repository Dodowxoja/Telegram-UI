import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/view/cart/state/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
}
