import 'package:formz/formz.dart';

enum TitleError { invalid }

class Title extends FormzInput<String, TitleError> {
  const Title.pure() : super.pure('');

  const Title.dirty({String value = ''}) : super.dirty(value);

  @override
  TitleError? validator(String value) {
    if (value.length < 2) {
      return TitleError.invalid;
    } else {
      return null;
    }
  }
}
