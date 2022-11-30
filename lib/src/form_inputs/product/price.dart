import 'package:formz/formz.dart';

enum PriceError { invalid }

class Price extends FormzInput<int, PriceError> {
  const Price.pure() : super.pure(0);

  const Price.dirty({int value = 0}) : super.dirty(value);

  @override
  PriceError? validator(int value) {
    if (value < 0 || value > 9999999) {
      return PriceError.invalid;
    } else {
      return null;
    }
  }
}
