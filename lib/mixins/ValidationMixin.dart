class ValidationMixin{
  String validateEmail(String value){
    if(value.contains("@")){
      return null;
    } else {
      return "Incorrect e-mail format";
    }
  }

  String validatePassword(String value){
    if(value.length >= 8){
      return null;
    } else {
      return "Password needs at least 10 characters";
    }
  }

  String validateAddress(String value){
    if(value.length >= 10){
      return null;
    } else {
      return "Address needs at least 10 characters";
    }
  }

  String validateName(String value){
    if(value.length >= 3 && value.length <= 10){
      return null;
    } else {
      return "Name is either too long or too short";
    }
  }

  String validatePnumber(String value){
    if(value.length == 11){
      return null;
    } else {
      return "Enter your 11-digit phone number";
    }
  }

  String validatedate(String value){
    if(value.contains("/")){
      return null;
    } else {
      return "Enter a valid date";
    }
  }
}