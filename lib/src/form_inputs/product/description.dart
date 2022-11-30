import 'package:formz/formz.dart';

enum DescriptionError { invalid }

class Description extends FormzInput<String, DescriptionError> {
  const Description.pure() : super.pure('');

  const Description.dirty({String value = ''}) : super.dirty(value);

  @override
  DescriptionError? validator(String value) {
    if (value.length > 255) {
      return DescriptionError.invalid;
    } else {
      return null;
    }
  }
}
