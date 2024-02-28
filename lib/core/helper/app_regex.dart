class AppRegex {
  static bool isEmailValidated(String email) {
    return RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$",
    ).hasMatch(email);
  }

  static bool isPasswordValidated(String password) {
      return RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%\^&\*]).{8,}$").hasMatch(password);
  }
  static bool haslowercase(String password){
          return RegExp(r"^(?=.*[a-z])").hasMatch(password);

  }
  static bool hasuppercase(String password){
          return RegExp(r"^(?=.*[A-Z])").hasMatch(password);

  }

  static bool hasNumber(String password){
          return RegExp(r"^(?=.*?[0-9])").hasMatch(password);

  }
  static bool hasspecialcharater(String password){
          return RegExp(r"^(?=.*?[#?!@$%^&*-])").hasMatch(password);

  }

   static bool hasminlilenght(String password){
          return RegExp(r"^(?=.{8,})").hasMatch(password);

  }
}
