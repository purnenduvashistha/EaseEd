class Validator {
  static String? validateEmail({required String email}) {
    RegExp emailRegExp = RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");

    if (email.isEmpty) {
      return 'Email can\'t be empty';
    } else if (!emailRegExp.hasMatch(email)) {
      return 'Enter your institute email';
    }

    return null;
  }

  static String? validatePassword({required String password}) {
    if (password.isEmpty) {
      return 'Password can\'t be empty';
    } else if (password.length < 6) {
      return 'Enter a password with length at least 6';
    }

    return null;
  }

  static String? validateName({required String name}) {
    RegExp emailRegExp = RegExp(r".*");

    if (name.isEmpty) {
      return 'Name can\'t be empty';
    } else if (!emailRegExp.hasMatch(name)) {
      return 'Please enter a valid name';
    }

    return null;
  }

  static String? validatePhone({required String phone}) {
    RegExp emailRegExp = RegExp(
        r"(\+?( |-|\.)?\d{1,2}( |-|\.)?)?(\(?\d{3}\)?|\d{3})( |-|\.)?(\d{3}( |-|\.)?\d{4})");

    if (phone.isEmpty) {
      return 'Phone Number can\'t be empty';
    } else if (!emailRegExp.hasMatch(phone)) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  static String? validateAddress({required String address}) {
    RegExp emailRegExp = RegExp(r"^.*$");

    if (address.isEmpty) {
      return 'Address can\'t be empty';
    } else if (!emailRegExp.hasMatch(address)) {
      return 'Please enter a valid address or Hostel Room no.';
    }

    return null;
  }
}
