import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/helpers/validate_form.dart';

class BookingTouristFormField extends StatelessWidget {
  const BookingTouristFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 17.0),
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
              errorStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
              ),
              labelText: "Имя",
              border: InputBorder.none,
              labelStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(169, 171, 183, 1),
              ),
            ),
            validator: (value) => ValidateForm().inputTourist(value!),
          ),
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
              errorStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
              ),
              labelText: "Фамилия",
              border: InputBorder.none,
              labelStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(169, 171, 183, 1),
              ),
            ),
            validator: (value) => ValidateForm().inputTourist(value!),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(246, 246, 249, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.75,
            ),
            decoration: const InputDecoration(
              errorStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
              ),
              labelText: "Дата рождения",
              border: InputBorder.none,
              labelStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(169, 171, 183, 1),
              ),
            ),
            validator: (value) => ValidateForm().inputTourist(value!),
          ),
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
              errorStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
              ),
              labelText: "Гражданство",
              border: InputBorder.none,
              labelStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(169, 171, 183, 1),
              ),
            ),
            validator: (value) => ValidateForm().inputTourist(value!),
          ),
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
              errorStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
              ),
              labelText: "Номер загранпаспорта",
              border: InputBorder.none,
              labelStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(169, 171, 183, 1),
              ),
            ),
            validator: (value) => ValidateForm().inputTourist(value!),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(246, 246, 249, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.75,
            ),
            decoration: const InputDecoration(
              errorStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
              ),
              labelText: "Срок действия загранпаспорта",
              border: InputBorder.none,
              labelStyle: TextStyle(
                fontSize: 17,
                letterSpacing: 0.17,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(169, 171, 183, 1),
              ),
            ),
            validator: (value) => ValidateForm().inputTourist(value!),
          ),
        ),
      ],
    );
  }
}
