import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import '../../../form_inputs/product/title.dart';
import '../../../form_inputs/product/description.dart';
import '../../../form_inputs/product/price.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductState());
}
