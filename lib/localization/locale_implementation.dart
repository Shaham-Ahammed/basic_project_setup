import 'package:basic_setups/localization/abstract_localization.dart';

// English Implementations
class EnglishAuthLocalization implements AuthLocalization {
  @override
  String get loginTitle => 'Login';
  @override
  String get signupTitle => 'Sign Up';
  @override
  String get forgotPasswordTitle => 'Forgot Password';
}


// Arabic Implementations (similar structure)
class ArabicAuthLocalization implements AuthLocalization {
  @override
  String get loginTitle => 'تسجيل الدخول';
  @override
  String get signupTitle => 'اشتراك';
  @override
  String get forgotPasswordTitle => 'نسيت كلمة المرور';
}
