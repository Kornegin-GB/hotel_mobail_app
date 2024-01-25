import 'package:flutter/cupertino.dart';

class ValidateForm {
  String? inputPhone(String value) {
    debugPrint(value);
    debugPrint(value.toString());
    if (value.isEmpty) {
      return "Поле телефон не должно быть пустым";
    }
    bool validPhone = RegExp(r'^[+][7]\s\([0-9]{3}\)'
            r'\s[0-9]{3}-[0-9]{2}-[0-9]{2}')
        .hasMatch(value);
    if (!validPhone) {
      return "Телефонный номер введен не корректно";
    }
    return null;
  }

  String? inputEmail(String value) {
    if (value.isEmpty) {
      return "Поле E-mail не должно быть пустым";
    }
    bool valid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (!valid) {
      return 'Введите правильный адрес E-mail';
    }
    return null;
  }

  String? inputTourist(String value) {
    if (value.isEmpty) {
      return "Поле обязательно для заполнения";
    }
    return null;
  }
}
