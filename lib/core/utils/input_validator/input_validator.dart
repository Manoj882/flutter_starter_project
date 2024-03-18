import '/core/constants/error_text_constants.dart';

class InputValidator {
  validateEmptyText(String? value) {
    if (value?.trim().isEmpty == true) {
      return ErrorTextConstants.kRequired;
    }
    return null;
  }

  validateConfirmPassword(String? password, String? confirmPassword) {
    if (confirmPassword?.trim().isEmpty == true) {
      return 'Confirm password can\'t empty.';
    } else if (password == null || password.trim().isEmpty == true) {
      return 'Please set password before confirm password.';
    } else if (confirmPassword != null ||
        confirmPassword?.trim().isNotEmpty == true) {
      if (password.trim() != confirmPassword?.trim()) {
        return 'Password doesn\'t match';
      }
    }

    return null;
  }
}
