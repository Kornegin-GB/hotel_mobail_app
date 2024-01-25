import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/helpers/validate_form.dart';
import 'package:hotel_mobile_app/pages/booking/booking_phone_field.dart';

class BookingAboutBuyer extends StatelessWidget {
  const BookingAboutBuyer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Информация о покупателе",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(246, 246, 249, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const BookingPhoneField(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(246, 246, 249, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.75,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: "Почта",
                errorStyle: TextStyle(
                  fontSize: 17,
                  letterSpacing: 0.17,
                  fontWeight: FontWeight.w400,
                ),
                labelStyle: TextStyle(
                  fontSize: 17,
                  letterSpacing: 0.17,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(169, 171, 183, 1),
                ),
              ),
              validator: (value) => ValidateForm().inputEmail(value!),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 8.0)),
          const Text(
            "Эти данные никому не передаются. После оплаты мы вышли "
            "чек на указанный вами номер и почту",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(130, 135, 150, 1),
            ),
          )
        ],
      ),
    );
  }
}
