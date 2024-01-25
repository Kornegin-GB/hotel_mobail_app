import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/helpers/validate_form.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BookingPhoneField extends StatefulWidget {
  const BookingPhoneField({
    super.key,
  });

  @override
  State<BookingPhoneField> createState() => _BookingPhoneFieldState();
}

class _BookingPhoneFieldState extends State<BookingPhoneField> {
  @override
  Widget build(BuildContext context) {
    String hint = "+7 (###) ###-##-##";
    String formText = "";

    TextEditingController getContr() {
      TextEditingController _controller = TextEditingController();
      _controller.value = TextEditingValue(
        text: formText,
        selection: TextSelection.fromPosition(
          TextPosition(offset: formText.length),
        ),
      );
      return _controller;
    }

    return TextFormField(
      onChanged: (value) {
        hint = value;
      },
      controller: getContr(),
      inputFormatters: [
        MaskTextInputFormatter(
          mask: "+7 (F##) ###-##-##",
          filter: {"F": RegExp("[9]"), "#": RegExp('[0-9]')},
          type: MaskAutoCompletionType.eager,
        ),
      ],
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.75,
      ),
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: "+7 (***) ***-**-**",
        border: InputBorder.none,
        labelText: "Номер телефона",
        labelStyle: TextStyle(
          fontSize: 17,
          letterSpacing: 0.17,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(169, 171, 183, 1),
        ),
        errorStyle: TextStyle(
          fontSize: 17,
          letterSpacing: 0.17,
          fontWeight: FontWeight.w400,
        ),
      ),
      validator: (value) => ValidateForm().inputPhone(value!),
    );
  }
}
