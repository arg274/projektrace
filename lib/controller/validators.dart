import 'package:validators/validators.dart';

String? validateEmail(String? email, ) {
  if (email == null || email.isEmpty) {
    return 'Please enter an email';
  } else if (!isEmail(email)) {
    return 'Please enter a valid email';
  } else {
    return null;
  }
}

String? validatePwd(String? pwd) {
  if (pwd == null || pwd.isEmpty) {
    return 'Please enter a password';
  } else if (!isAlphanumeric(pwd)) {
    return 'Password should be alphanumeric';
  } else {
    return null;
  }
}