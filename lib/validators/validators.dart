class Validators {
  static bool isValidEmail({String? email}) {
    if (email == '' || email == '') {
      return false;
    }
    return true;
  }

  static bool isValidPassword({String? password}) {
    if (password == null || password == '') {
      return false;
    }
    if (password.length < 3) {
      return false;
    }
    return true;
  }
}
