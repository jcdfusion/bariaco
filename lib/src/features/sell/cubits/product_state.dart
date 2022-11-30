part of 'product_cubit.dart';

class ProductState extends Equatable {
  final Title title;
  final Price price;
  final Description description;
  final FormzStatus formStatus;
  final String? errorMessage;

  const ProductState({
    this.title = const Title.pure(),
    this.price = const Price.pure(),
    this.description = const Description.pure(),
    this.formStatus = FormzStatus.pure,
    this.errorMessage,
  });

  @override
  List<Object> get props => [title, price, description, formStatus];

  ProductState copyWith({
    Title? title,
    Price? price,
    Description? description,
    FormzStatus? formStatus,
    String? errorMessage,
  }) {
    return ProductState(
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      formStatus: formStatus ?? this.formStatus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
