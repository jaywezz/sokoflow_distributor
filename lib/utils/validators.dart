String? phoneNumberValidator(String? phoneNumber) {
  if (phoneNumber!.isEmpty) {
    return "Phone Cannot be empty"; // Phone number is empty
  }else{
    final RegExp phoneRegex = RegExp(r'^\d{11}$');
    if(phoneRegex.hasMatch(phoneNumber)){
      return "Invalid phone number";
    }else{
      return null;
    }
  }
}

String? passwordValidator(String? password) {
  if (password!.isEmpty) {
    return "Password Cannot be empty"; // Phone number is empty
  }else{
    return null;
  }
}
